﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace accounts.DB
{
    static class BankReceipt
    {
        public static DataTable BRTable;
        public static void Fetch()
        {
            BRTable = Connection._FetchTable("select * from bank_receipts order by br_no");
        }
        public static int Save(Model.BankReceiptModel payment, bool flag = false)
        {
            int res = 0;

            try
            {

                var con = DB.Connection.OpenConnection();
                if (con != null)
                {
                    string sql = "insert into bank_receipts  ([br_crledger],[br_drledger],[br_amount],[br_disc],[br_damount],[br_type],[br_status],[br_bcharge] ,[br_cheqno] " +
                    ",[br_date],[br_cheqdate],[br_narration],[br_invoice]) values(@bp_crledger,@bp_drledger,@bp_amount,@bp_disc,@bp_damount,@bp_type,@bp_status,@bp_bcharge ,@bp_cheqno " +
                    ",@bp_date,@bp_cheqdate,@bp_narration,@bp_invoice)";

                    OleDbParameter crldgr = new OleDbParameter("@bp_crledger", OleDbType.Integer); crldgr.Direction = ParameterDirection.Input;
                    OleDbParameter drldgr = new OleDbParameter("@bp_drledger", OleDbType.Integer); drldgr.Direction = ParameterDirection.Input;
                    OleDbParameter amount = new OleDbParameter("@bp_amount", OleDbType.Double); amount.Direction = ParameterDirection.Input;
                    OleDbParameter dp = new OleDbParameter("@bp_disc", OleDbType.Double); dp.Direction = ParameterDirection.Input;
                    OleDbParameter discount = new OleDbParameter("@bp_damount", OleDbType.Double); discount.Direction = ParameterDirection.Input;
                    OleDbParameter btype = new OleDbParameter("@bp_type", OleDbType.VarChar); btype.Direction = ParameterDirection.Input;
                    OleDbParameter status = new OleDbParameter("@bp_status", OleDbType.VarChar); status.Direction = ParameterDirection.Input;
                    OleDbParameter bcharge = new OleDbParameter("@bp_bcharge", OleDbType.Double); bcharge.Direction = ParameterDirection.Input;
                    OleDbParameter cheqno = new OleDbParameter("@bp_cheqno", OleDbType.VarChar); cheqno.Direction = ParameterDirection.Input;
                    OleDbParameter brdate = new OleDbParameter("@bp_date", OleDbType.Date); brdate.Direction = ParameterDirection.Input;
                    OleDbParameter cheqdate = new OleDbParameter("@bp_cheqdate", OleDbType.Date); cheqdate.Direction = ParameterDirection.Input;
                    OleDbParameter narration = new OleDbParameter("@bp_narration", OleDbType.VarChar); narration.Direction = ParameterDirection.Input;

                    OleDbParameter invoice = new OleDbParameter("@bp_invoice", OleDbType.VarChar); invoice.Direction = ParameterDirection.Input;

                    invoice.Value = payment.Invno;
                    narration.Value = payment.Narration;
                    cheqdate.Value = payment.CheqDate;
                    brdate.Value = payment.Date;
                    cheqno.Value = payment.CheqNo;
                    bcharge.Value = payment.BankCharge;
                    status.Value = payment.Status;
                    btype.Value = payment.Type;
                    dp.Value = payment.DiscP;
                    discount.Value = payment.DiscAmount;
                    amount.Value = payment.Amount;
                    crldgr.Value = payment.CrAccount.ID;
                    drldgr.Value = payment.DrAccount.ID;

                    OleDbCommand cmd = new OleDbCommand(sql, con);

                    cmd.Parameters.Add(crldgr);
                    cmd.Parameters.Add(drldgr);
                    cmd.Parameters.Add(amount);
                    cmd.Parameters.Add(dp);
                    cmd.Parameters.Add(discount);
                    cmd.Parameters.Add(btype);
                    cmd.Parameters.Add(status);
                    cmd.Parameters.Add(bcharge);
                    cmd.Parameters.Add(cheqno);
                    cmd.Parameters.Add(brdate);
                    cmd.Parameters.Add(cheqdate);
                    cmd.Parameters.Add(narration);
                    cmd.Parameters.Add(invoice);



                    int r = cmd.ExecuteNonQuery();
                    
                    if (r != 0)
                    {
                        var eno = DB.Connection.NewEntryno("bank_receipts", "br_no", conn: con) - 1;
                        payment.rno = eno;
                        res = eno;
 

                        if (payment.Status != "Pending" && payment.Status != "Cancelled")
                        {
                            Model.Trsansactions transactions = new Model.Trsansactions();
                            transactions.Entry = "BANK RECEIPT";
                            transactions.Eno = payment.rno;
                            transactions.Ac_Id = payment.CrAccount.ID;
                            transactions.Op_Ac_Id = payment.DrAccount.ID;
                            transactions.Dr_Amount = payment.Amount - payment.DiscAmount;
                            transactions.Cr_Amount = 0;
                            transactions.Cinv_no = payment.Invno;
                            transactions.Tr_date = payment.Date;
                            Transactions.post(transactions);

                            transactions = new Model.Trsansactions();
                            transactions.Entry = "BANK RECEIPT";
                            transactions.Eno = payment.rno;
                            transactions.Op_Ac_Id = payment.CrAccount.ID;
                            transactions.Ac_Id = payment.DrAccount.ID;
                            transactions.Cr_Amount = payment.Amount  ;
                            transactions.Dr_Amount = 0;
                            transactions.Cinv_no = payment.Invno;
                            transactions.Tr_date = payment.Date;
                            Transactions.post(transactions);


                            if (payment.DiscAmount > 0)
                            {

                                int disc_id = 0;
                                var disc_ac = ViewModels_Variables.ModelViews.Accounts.Where((ac) => ac.Name == "DISCOUNT ALLOWED ON RECEIPTS" && ac.Parent.Name == "INDIRECT EXPENSE").FirstOrDefault();
                                if (disc_ac != null) { disc_id = disc_ac.ID; }

                                if (disc_id == 0)
                                {
                                    int gid = 0;
                                    var ind = ViewModels_Variables.ModelViews.AccountGroups.Where((g) => g.Name == "INDIRECT EXPENSE").FirstOrDefault();
                                    if (ind != null) { gid = ind.ID; }
                                    if (gid == 0)
                                    {
                                        int parent = 0;
                                        var is_parent = ViewModels_Variables.ModelViews.AccountGroups.Where((g) => g.Name == "EXPENSE").FirstOrDefault();
                                        if (is_parent != null)
                                        {
                                            parent = is_parent.ID;
                                        }
                                        else
                                        {
                                            MessageBox.Show("'EXPENSE' Parent Group Missing");
                                        }

                                        if (parent > 0)
                                        {
                                            Model.GroupModel group = new Model.GroupModel()
                                            {
                                                Name = "INDIRECT EXPENSE",
                                                P_ID = parent,
                                                Catagory = "None",
                                                Cr_Loc = 0,
                                                Dr_Loc = 0,
                                                Max_Disc = 0,
                                                Description = "Created By Program",
                                                ID = 0
                                            };
                                            gid = DB.AccountGroup.Save(group);
                                            if (gid > 0)
                                            {
                                                Model.AccountModel account = new Model.AccountModel()
                                                {
                                                    Name = "DISCOUNT ALLOWED ON RECEIPTS",
                                                    ParentGroup = 0,
                                                    Short_Name = "DISCOUNT ALLOWED ON RECEIPTS",
                                                    Address = "",
                                                    City = "",
                                                    Mob = "",
                                                    PhoneNo = "",
                                                    CrLimit = 0,
                                                    DrLimit = 0,
                                                    Catagory = "",
                                                    MaxDisc = 0

                                                };
                                                disc_id = DB.Accounts.Save(account);
                                            }
                                        }
                                    }
                                }
                            

                                transactions = new Model.Trsansactions();
                                transactions.Entry = "BANK RECEIPT";
                                transactions.Eno = payment.rno;
                                transactions.Op_Ac_Id = disc_id;
                                transactions.Ac_Id = payment.CrAccount.ID;
                                transactions.Cr_Amount = 0;
                                transactions.Dr_Amount = payment.DiscAmount;
                                transactions.Cinv_no = payment.Invno;
                                transactions.Tr_date = payment.Date;
                                Transactions.post(transactions);

                                transactions = new Model.Trsansactions();
                                transactions.Entry = "BANK RECEIPT";
                                transactions.Eno = payment.rno;
                                transactions.Op_Ac_Id = payment.CrAccount.ID;
                                transactions.Ac_Id = disc_id;
                                transactions.Cr_Amount = payment.DiscAmount;
                                transactions.Dr_Amount = 0;
                                transactions.Cinv_no = payment.Invno;
                                transactions.Tr_date = payment.Date;
                                Transactions.post(transactions);

                            }
                            if (payment.BankCharge > 0)
                            {

                                transactions = new Model.Trsansactions();
                                transactions.Entry = "BANK RECEIPT";
                                transactions.Eno = payment.rno;
                                transactions.Op_Ac_Id = payment.DrAccount.ID;
                                transactions.Ac_Id = payment.CrAccount.ID;
                                transactions.Cr_Amount = payment.BankCharge;
                                transactions.Dr_Amount = 0;
                                transactions.Cinv_no = payment.Invno;
                                transactions.Tr_date = payment.Date;
                                Transactions.post(transactions);
                                var bc = ViewModels_Variables.ModelViews.Accounts.Where((ac) => ac.Name == "BANK CHARGES").FirstOrDefault();
                                int bc_id = 0;
                                if (bc != null)
                                {
                                    Model.AccountModel account = new Model.AccountModel()
                                    {
                                        Name = "BANK CHARGES",
                                        ParentGroup = 0,
                                        Short_Name = "BANK CHARGES",
                                        Address = "",
                                        City = "",
                                        Mob = "",
                                        PhoneNo = "",
                                        CrLimit = 0,
                                        DrLimit = 0,
                                        Catagory = "",
                                        MaxDisc = 0

                                    };
                                    bc_id = DB.Accounts.Save(account);
                                }
                                else
                                {
                                    bc_id = bc.ID;
                                }

                                transactions = new Model.Trsansactions();
                                transactions.Entry = "BANK RECEIPT";
                                transactions.Eno = payment.rno;
                                transactions.Op_Ac_Id = bc_id;
                                transactions.Ac_Id = payment.CrAccount.ID;
                                transactions.Dr_Amount = payment.BankCharge;
                                transactions.Dr_Amount = 0;
                                transactions.Cinv_no = payment.Invno;
                                transactions.Tr_date = payment.Date;
                                Transactions.post(transactions);



                            }
                        }

                        payment.InvBalance = DB.Connection.GetActBalance(dt: payment.Date, id: payment.CrAccount.ID, byInvoice: payment.Invno);
                        var rcpts = ViewModels_Variables.ModelViews.BankReceipts.Where((r1) => r1.Invno == payment.Invno && r1.CrAccount.ID == payment.CrAccount.ID);
                        foreach (var rr in rcpts)
                        {
                            rr.InvBalance = DB.Connection.GetActBalance(dt: rr.Date, id: rr.CrAccount.ID, byInvoice: rr.Invno);
                        }

                        ViewModels_Variables.ModelViews.Add_Update(payment);
                    }

                }
                else
                {
                    MessageBox.Show("Database connection error");
                }
            }


            catch (OleDbException rr)
            {
                MessageBox.Show(rr.Message.ToString());
            }

            return res;
        }
        public static bool Update(Model.BankReceiptModel payment, bool flag = false)
        {
            bool res = false;

            try
            {
                MessageBoxResult re = new MessageBoxResult();
                re = MessageBox.Show("Do you want Update this Bank Receipt", "Update Bank Receipt", MessageBoxButton.YesNo);
                if (re == MessageBoxResult.Yes)
                {
                    Transactions.delete(payment.rno, "BANK RECEIPT");
                    var con = DB.Connection.OpenConnection();
                    if (con != null)
                    {
                        string sql = "update bank_receipts  set [br_crledger]=@br_crledger,[br_drledger]=@bp_drledger,[br_amount]=@br_amount,[br_disc]=@bp_disc,[br_damount]=@bp_damount,[br_type]=@bp_type,[br_status]=@bp_status,[br_bcharge]=@bp_bcharge ,[br_cheqno]=@bp_cheqno " +
                        ",[br_date]=@bp_date,[br_cheqdate]=@bp_cheqdate,[br_narration]=@bp_narration,[br_invoice]=@bp_invoice where br_no=" + payment.rno;

                        OleDbParameter crldgr = new OleDbParameter("@bp_crledger", OleDbType.Integer); crldgr.Direction = ParameterDirection.Input;
                        OleDbParameter drldgr = new OleDbParameter("@bp_drledger", OleDbType.Integer); drldgr.Direction = ParameterDirection.Input;
                        OleDbParameter amount = new OleDbParameter("@bp_amount", OleDbType.Double); amount.Direction = ParameterDirection.Input;
                        OleDbParameter dp = new OleDbParameter("@bp_disc", OleDbType.Double); dp.Direction = ParameterDirection.Input;
                        OleDbParameter discount = new OleDbParameter("@bp_damount", OleDbType.Double); discount.Direction = ParameterDirection.Input;
                        OleDbParameter btype = new OleDbParameter("@bp_type", OleDbType.VarChar); btype.Direction = ParameterDirection.Input;
                        OleDbParameter status = new OleDbParameter("@bp_status", OleDbType.VarChar); status.Direction = ParameterDirection.Input;
                        OleDbParameter bcharge = new OleDbParameter("@bp_bcharge", OleDbType.Double); bcharge.Direction = ParameterDirection.Input;
                        OleDbParameter cheqno = new OleDbParameter("@bp_cheqno", OleDbType.VarChar); cheqno.Direction = ParameterDirection.Input;
                        OleDbParameter brdate = new OleDbParameter("@bp_date", OleDbType.Date); brdate.Direction = ParameterDirection.Input;
                        OleDbParameter cheqdate = new OleDbParameter("@bp_cheqdate", OleDbType.Date); cheqdate.Direction = ParameterDirection.Input;
                        OleDbParameter narration = new OleDbParameter("@bp_narration", OleDbType.VarChar); narration.Direction = ParameterDirection.Input;

                        OleDbParameter invoice = new OleDbParameter("@bp_invoice", OleDbType.VarChar); invoice.Direction = ParameterDirection.Input;

                        invoice.Value = payment.Invno;
                        narration.Value = payment.Narration;
                        cheqdate.Value = payment.CheqDate;
                        brdate.Value = payment.Date;
                        cheqno.Value = payment.CheqNo;
                        bcharge.Value = payment.BankCharge;
                        status.Value = payment.Status;
                        btype.Value = payment.Type;
                        dp.Value = payment.DiscP;
                        discount.Value = payment.DiscAmount;
                        amount.Value = payment.Amount;
                        crldgr.Value = payment.CrAccount.ID;
                        drldgr.Value = payment.DrAccount.ID;

                        OleDbCommand cmd = new OleDbCommand(sql, con);

                        cmd.Parameters.Add(crldgr);
                        cmd.Parameters.Add(drldgr);
                        cmd.Parameters.Add(amount);
                        cmd.Parameters.Add(dp);
                        cmd.Parameters.Add(discount);
                        cmd.Parameters.Add(btype);
                        cmd.Parameters.Add(status);
                        cmd.Parameters.Add(bcharge);
                        cmd.Parameters.Add(cheqno);
                        cmd.Parameters.Add(brdate);
                        cmd.Parameters.Add(cheqdate);
                        cmd.Parameters.Add(narration);
                        cmd.Parameters.Add(invoice);



                        int r = cmd.ExecuteNonQuery();

                        if (r != 0)
                        {
                            if (payment.Status != "Pending" && payment.Status != "Cancelled")
                            {
                                Model.Trsansactions transactions = new Model.Trsansactions();
                                transactions.Entry = "BANK RECEIPT";
                                transactions.Eno = payment.rno;
                                transactions.Ac_Id = payment.CrAccount.ID;
                                transactions.Op_Ac_Id = payment.DrAccount.ID;
                                transactions.Dr_Amount = payment.Amount - payment.DiscAmount;
                                transactions.Cr_Amount = 0;
                                transactions.Cinv_no = payment.Invno;
                                transactions.Tr_date = payment.Date;
                                Transactions.post(transactions);

                                transactions = new Model.Trsansactions();
                                transactions.Entry = "BANK RECEIPT";
                                transactions.Eno = payment.rno;
                                transactions.Op_Ac_Id = payment.CrAccount.ID;
                                transactions.Ac_Id = payment.DrAccount.ID;
                                transactions.Cr_Amount = payment.Amount;
                                transactions.Dr_Amount = 0;
                                transactions.Cinv_no = payment.Invno;
                                transactions.Tr_date = payment.Date;
                                Transactions.post(transactions);


                                if (payment.DiscAmount > 0)
                                {

                                    int disc_id = 0;
                                    var disc_ac = ViewModels_Variables.ModelViews.Accounts.Where((ac) => ac.Name == "DISCOUNT ALLOWED ON RECEIPTS" && ac.Parent.Name == "INDIRECT EXPENSE").FirstOrDefault();
                                    if (disc_ac != null) { disc_id = disc_ac.ID; }

                                    if (disc_id == 0)
                                    {
                                        int gid = 0;
                                        var ind = ViewModels_Variables.ModelViews.AccountGroups.Where((g) => g.Name == "INDIRECT EXPENSE").FirstOrDefault();
                                        if (ind != null) { gid = ind.ID; }
                                        if (gid == 0)
                                        {
                                            int parent = 0;
                                            var is_parent = ViewModels_Variables.ModelViews.AccountGroups.Where((g) => g.Name == "EXPENSE").FirstOrDefault();
                                            if (is_parent != null)
                                            {
                                                parent = is_parent.ID;
                                            }
                                            else
                                            {
                                                MessageBox.Show("'EXPENSE' Parent Group Missing");
                                            }

                                            if (parent > 0)
                                            {
                                                Model.GroupModel group = new Model.GroupModel()
                                                {
                                                    Name = "INDIRECT EXPENSE",
                                                    P_ID = parent,
                                                    Catagory = "None",
                                                    Cr_Loc = 0,
                                                    Dr_Loc = 0,
                                                    Max_Disc = 0,
                                                    Description = "Created By Program",
                                                    ID = 0
                                                };
                                                gid = DB.AccountGroup.Save(group);
                                                if (gid > 0)
                                                {
                                                    Model.AccountModel account = new Model.AccountModel()
                                                    {
                                                        Name = "DISCOUNT ALLOWED ON RECEIPTS",
                                                        ParentGroup = 0,
                                                        Short_Name = "DISCOUNT ALLOWED ON RECEIPTS",
                                                        Address = "",
                                                        City = "",
                                                        Mob = "",
                                                        PhoneNo = "",
                                                        CrLimit = 0,
                                                        DrLimit = 0,
                                                        Catagory = "",
                                                        MaxDisc = 0

                                                    };
                                                    disc_id = DB.Accounts.Save(account);
                                                }
                                            }
                                        }
                                    
                                }

                                    transactions = new Model.Trsansactions();
                                    transactions.Entry = "BANK RECEIPT";
                                    transactions.Eno = payment.rno;
                                    transactions.Op_Ac_Id = disc_id;
                                    transactions.Ac_Id = payment.CrAccount.ID;
                                    transactions.Cr_Amount = 0;
                                    transactions.Dr_Amount = payment.DiscAmount;
                                    transactions.Cinv_no = payment.Invno;
                                    transactions.Tr_date = payment.Date;
                                    Transactions.post(transactions);

                                    transactions = new Model.Trsansactions();
                                    transactions.Entry = "BANK RECEIPT";
                                    transactions.Eno = payment.rno;
                                    transactions.Op_Ac_Id = payment.CrAccount.ID;
                                    transactions.Ac_Id = disc_id;
                                    transactions.Cr_Amount = payment.DiscAmount;
                                    transactions.Dr_Amount = 0;
                                    transactions.Cinv_no = payment.Invno;
                                    transactions.Tr_date = payment.Date;
                                    Transactions.post(transactions);

                                }
                                if (payment.BankCharge > 0)
                                {

                                    transactions = new Model.Trsansactions();
                                    transactions.Entry = "BANK RECEIPT";
                                    transactions.Eno = payment.rno;
                                    transactions.Op_Ac_Id = payment.DrAccount.ID;
                                    transactions.Ac_Id = payment.CrAccount.ID;
                                    transactions.Cr_Amount = payment.BankCharge;
                                    transactions.Dr_Amount = 0;
                                    transactions.Cinv_no = payment.Invno;
                                    transactions.Tr_date = payment.Date;
                                    Transactions.post(transactions);
                                    var bc = ViewModels_Variables.ModelViews.Accounts.Where((ac) => ac.Name == "BANK CHARGES").FirstOrDefault();
                                    int bc_id = 0;
                                    if (bc != null)
                                    {
                                        Model.AccountModel account = new Model.AccountModel()
                                        {
                                            Name = "BANK CHARGES",
                                            ParentGroup = 0,
                                            Short_Name = "BANK CHARGES",
                                            Address = "",
                                            City = "",
                                            Mob = "",
                                            PhoneNo = "",
                                            CrLimit = 0,
                                            DrLimit = 0,
                                            Catagory = "",
                                            MaxDisc = 0

                                        };
                                        bc_id = DB.Accounts.Save(account);
                                    }
                                    else
                                    {
                                        bc_id = bc.ID;
                                    }

                                    transactions = new Model.Trsansactions();
                                    transactions.Entry = "BANK RECEIPT";
                                    transactions.Eno = payment.rno;
                                    transactions.Op_Ac_Id = bc_id;
                                    transactions.Ac_Id = payment.CrAccount.ID;
                                    transactions.Dr_Amount = payment.BankCharge;
                                    transactions.Dr_Amount = 0;
                                    transactions.Cinv_no = payment.Invno;
                                    transactions.Tr_date = payment.Date;
                                    Transactions.post(transactions);



                                }


                                res = true;
                                payment.InvBalance = DB.Connection.GetActBalance(dt: payment.Date, id: payment.CrAccount.ID, byInvoice: payment.Invno);
                                var rcpts = ViewModels_Variables.ModelViews.BankReceipts.Where((r1) => r1.Invno == payment.Invno && r1.CrAccount.ID == payment.CrAccount.ID);
                                foreach (var rr in rcpts)
                                {
                                    rr.InvBalance = DB.Connection.GetActBalance(dt: rr.Date, id: rr.CrAccount.ID, byInvoice: rr.Invno);
                                }
                                ViewModels_Variables.ModelViews.Add_Update(payment);
                            }

                        }
                    }
                }
            }
            catch (OleDbException rr)
            {
                MessageBox.Show(rr.Message.ToString());
            }
            return res;
        }
        public static bool Remove(int id)
        {
            bool e = false;
            try
            {
                MessageBoxResult res = new MessageBoxResult();
                res = System.Windows.MessageBox.Show("Do you want to Remove this Entry", "Remove Bank Payment", MessageBoxButton.YesNo);
                if (res == MessageBoxResult.Yes)
                {
                    
                        var con = Connection.OpenConnection();
                        if (con != null)
                        {
                            OleDbCommand cmd = new OleDbCommand();
                            cmd.Connection = con;
                            Transactions.delete(id, "BANK RECEIPT");

                           
                            cmd.CommandText = "delete from bank_receipts where br_no=" + id;
                            int r = cmd.ExecuteNonQuery();

                            if (r > 0)
                            {
                                e = true;
                                var acc = ViewModels_Variables.ModelViews.BankReceipts.Where((a) => a.rno == id).FirstOrDefault();
                                if (acc != null) ViewModels_Variables.ModelViews.Remove(acc);
                                e = true;

                            var payment=ViewModels_Variables.ModelViews.BankReceipts.Where((br) => br.rno == id).FirstOrDefault();
                            var rcpts = ViewModels_Variables.ModelViews.BankReceipts.Where((r1) => r1.Invno == payment.Invno && r1.CrAccount.ID == payment.CrAccount.ID);
                            foreach (var rr in rcpts)
                            {
                                rr.InvBalance = DB.Connection.GetActBalance(dt: rr.Date, id: rr.CrAccount.ID, byInvoice: rr.Invno);
                            }

                        }
                        }
                     
                }
            }
            catch (Exception er)
            {

                MessageBox.Show(er.Message.ToString());
            }
            return e;
        }
    }
}
