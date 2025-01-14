﻿using accounts.Model;
using Microsoft.Office.Interop.Excel;
using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Input;
using System.Windows.Xps.Packaging;
using Xceed.Document.NET;

namespace accounts
{
    /// <summary>
    /// Interaction logic for payrollreport.xaml
    /// </summary>
    public partial class payrollreport : System.Windows.Window
    {
        ListCollectionView view;
        IEnumerable<Model.PayRollEntryModel> report;
        string wordFname = null;
        string xpsFname = null;
        string pdfFname = null;
        void ClearReportcache()
        {
            try
            {
                xpsFname = null;
                pdfFname = null;
                wordFname = null;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public payrollreport()
        {
            InitializeComponent();
            dtp_from.SelectedDate = public_members._sysDate[0];
            dtp_to.SelectedDate = DateTime.Now.Date;

        }
        public payrollreport(string ac)
        {
            InitializeComponent();
            dtp_from.SelectedDate = public_members._sysDate[0];
            dtp_to.SelectedDate = DateTime.Now.Date;
            cmb_ACCOUNTS.Text = ac;

        }

        private void dtp_from_KeyUp(object sender, KeyEventArgs e)
        {
            try
            {

            }
            catch (Exception)
            {

                throw;
            }

        }

        private void dtp_to_KeyUp(object sender, KeyEventArgs e)
        {
            try
            {

            }
            catch (Exception)
            {

                throw;
            }
        }

        private void cmb_ACCOUNTS_KeyDown(object sender, KeyEventArgs e)
        {
            try
            {

            }
            catch (Exception)
            {

                throw;
            }
        }

        private void cmb_voucher_KeyDown(object sender, KeyEventArgs e)
        {

        }

        private void rep_grid_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            try
            {
                if (rep_grid.CurrentColumn == rep_grid.Columns[1])
                {
                    var item = (PayRollEntryModel)rep_grid.CurrentItem;

                    if (item != null && item.Employee.Length > 0)
                    {
                        payroll rform = new payroll();
                        rform.WindowStartupLocation = WindowStartupLocation.CenterOwner;
                        rform.Show();
                        rform.Find(item.VNO);
                    }

                }
            }
            catch (Exception ee)
            {

                MessageBox.Show(ee.Message.ToString());
            }
        }

        private void refresh_data_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                cmb_ACCOUNTS.SelectedItem = null;
                cmb_voucher.SelectedItem = null;
                Window_Loaded(sender, e);
            }
            catch (Exception)
            {

                throw;
            }
        }

        private void cmb_orderby_KeyDown(object sender, KeyEventArgs e)
        {

        }

        private void btn_print_Click(object sender, RoutedEventArgs e)
        {
            XpsDocument xps = null;

            try
            {
                if (wordFname == null)
                {
                    wordFname = CreateWordDoc();
                }
                if (xpsFname == null && wordFname != null)
                {
                    xpsFname = ReportExport.WordExport.CreateXPS(wordFname);
                }
                if (xpsFname != null)
                {
                    xps = new XpsDocument(xpsFname, FileAccess.Read);
                    accounts.PrintDialogue print = new PrintDialogue(xps, this.Title + " : " + cmb_ACCOUNTS.Text.ToString());
                    print.Show();
                    xps.Close();
                }
            }
            catch (Exception w1)
            {
                MessageBox.Show(w1.Message.ToString());
            }
        }
        string CreateWordDoc( )
        {
            string fname = null;
            try
            {
                if (report != null)
                {
                    fname = public_members.GnenerateFileName(public_members.reportPath + @"\BookKeeper\Doc");

                    using (var document = Xceed.Words.NET.DocX.Create(fname))
                    {
                        document.ApplyTemplate(@"doctemplates/monthlyPayrollReport.dotx");
                        //Footer
                        document.ReplaceText("[MyCompany]", ViewModels_Variables.ModelViews.CompanyProfile[0].company);
                        document.ReplaceText("[Clandmark]", " | " + ViewModels_Variables.ModelViews.CompanyProfile[0].lmark);
                        document.ReplaceText("[CCity]", " | " + ViewModels_Variables.ModelViews.CompanyProfile[0].place);
                        document.ReplaceText("[CPhone]", "Phone :" + ViewModels_Variables.ModelViews.CompanyProfile[0].officeno);

                        document.ReplaceText("[SDate]", dtp_from.SelectedDate.Value.ToShortDateString());
                        document.ReplaceText("[EDate]", dtp_to.SelectedDate.Value.ToShortDateString());
                        document.ReplaceText("[ReportDate]", public_members._sysDate[0].ToShortDateString());

                        if (cmb_ACCOUNTS.SelectedItem != null  )
                        {
                            //DataRow[] cust = public_members.ledgers.Select("l_short_name='" + cmb_ACCOUNTS.Text.ToString() + "'");
                            //if (cust.Length > 0)
                            //{
                              document.ReplaceText("[Account]", ((Model.AccountModel)cmb_ACCOUNTS.SelectedItem).Name);
                            //}
                        }

                        else
                        {
                            document.ReplaceText("[Account]", "");
                        }
                        var t = document.Tables;

                        var sorted = report;
                        {

                            Row newrow;
                            int i = 1;
                            foreach (var v in sorted)
                            {
                                ++i;
                                newrow = t[2].InsertRow();
                                newrow.Cells[0].Paragraphs[0].Append(v.DATE.ToShortDateString());
                                newrow.Cells[1].Paragraphs[0].Append(v.VNO.ToString());
                                newrow.Cells[2].Paragraphs[0].Append(v.EID.ToString());
                                if (cmb_ACCOUNTS.SelectedItem != null  ) { newrow.Cells[3].Paragraphs[0].Append(v.CrAccount.Name); } else { newrow.Cells[3].Paragraphs[0].Append(v.DrAccount.Account.Name); }
                                newrow.Cells[4].Paragraphs[0].Append(v.Basic.ToString("0.00")).Alignment = Alignment.right;
                                newrow.Cells[5].Paragraphs[0].Append(v.Total.ToString("0.00")).Alignment = Alignment.right;
                                t[2].Rows.Add(newrow);
                            }

                            newrow = t[2].InsertRow();
                            t[2].Rows.Add(newrow);
                            //var b = public_members.GetActBalance(public_members._sysDate[0], public_members.Ledgerid(cmb_ACCOUNTS.Text.ToString()));
                            var x = sorted.Cast<PayRollEntryModel>().Aggregate<PayRollEntryModel, double>(0, (total, s) => total += Convert.ToDouble(s.Basic));
                            var y = sorted.Cast<PayRollEntryModel>().Aggregate<PayRollEntryModel, double>(0, (total, s) => total += Convert.ToDouble(s.Total));


                            newrow = t[2].InsertRow();
                            newrow.Cells[1].Paragraphs[0].Append("Total").Bold(true);
                            newrow.Cells[5].Paragraphs[0].Append(string.Format("{0:0.00}", y)).Bold(true);
                            newrow.Cells[4].Paragraphs[0].Append(string.Format("{0:0.00}", x)).Bold(true);
                            t[2].Rows.Add(newrow);


                            document.Save();
                            document.Dispose();
                        }
                    }
                    //}

                }
            }
            catch (Exception e1)

            {
                MessageBox.Show(e1.Message.ToString());

            }
            return fname;
        }
        private void btn_doc_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (wordFname == null)
                {
                    wordFname = CreateWordDoc();
                }
                if (wordFname != null) Process.Start("WINWORD.exe", wordFname);
            }
            catch (Exception e1)

            {
                MessageBox.Show(e1.Message.ToString());

            }
        }

        private void btn_excel_Click(object sender, RoutedEventArgs e)
        {
            try
            {


                string fileName = public_members.GnenerateFileName(public_members.reportPath + @"\BookKeeper\workbook", ".xlsx");

                var app = new Microsoft.Office.Interop.Excel.Application();
                Microsoft.Office.Interop.Excel.Workbook workbook;
                workbook = app.Workbooks.Add(Type.Missing);
                var worKsheeT = (Microsoft.Office.Interop.Excel.Worksheet)workbook.ActiveSheet;
                worKsheeT.Range[worKsheeT.Cells[1, 1], worKsheeT.Cells[1, 3]].Merge();
                worKsheeT.Cells[1, 1] = "Monthly Payroll Report";

                var range = (Range)worKsheeT.Cells[1, 1];
                range.Font.Bold = true;
                range.Font.Size = 25;
                range.HorizontalAlignment = Microsoft.Office.Interop.Excel.XlHAlign.xlHAlignCenter;
                worKsheeT.Name = "Monthly Payroll Report";

                worKsheeT.Range[worKsheeT.Cells[3, 1], worKsheeT.Cells[3, 8]].Merge();

                if (cmb_ACCOUNTS.Text.Length > 0) { worKsheeT.Cells[3, 1] = "Monthly Payroll Report of " + cmb_ACCOUNTS.Text.ToString() + "As on " + public_members._sysDate[0].ToShortDateString(); }
                else { worKsheeT.Cells[3, 1] = "Monthly Payroll " + "As on " + public_members._sysDate[0].ToShortDateString(); }


                worKsheeT.Cells.Font.Size = 12;

                //Table Heading 
                worKsheeT.Cells[5, 1] = "SLNO";
                worKsheeT.Cells[5, 1].Font.Size = 13;

                worKsheeT.Cells[5, 2] = "Date";
                worKsheeT.Cells[5, 2].Font.Size = 13;
                ((Range)worKsheeT.Cells[5, 2]).EntireColumn.ColumnWidth = 15;

                worKsheeT.Cells[5, 3] = "V.NO";
                worKsheeT.Cells[5, 3].Font.Size = 13;
                ((Range)worKsheeT.Cells[5, 3]).EntireColumn.ColumnWidth = 10;

                worKsheeT.Cells[5, 4] = "Eid";
                worKsheeT.Cells[5, 4].Font.Size = 13;
                ((Range)worKsheeT.Cells[5, 4]).EntireColumn.ColumnWidth = 10;

                worKsheeT.Cells[5, 5] = "Employee";
                worKsheeT.Cells[5, 5].Font.Size = 13;
                ((Range)worKsheeT.Cells[5, 5]).EntireColumn.ColumnWidth = 40;

                worKsheeT.Cells[5, 6] = "Basic Pay";
                worKsheeT.Cells[5, 6].Font.Size = 13;
                ((Range)worKsheeT.Cells[5, 6]).EntireColumn.ColumnWidth = 20;



                worKsheeT.Cells[5, 7] = "Total";
                worKsheeT.Cells[5, 7].Font.Size = 13;
                ((Range)worKsheeT.Cells[5, 8]).EntireColumn.ColumnWidth = 20;


                var sorted =report;
                {
                    int i = 5;
                    int j = 0;
                    foreach (var v in sorted)
                    {
                        i++;
                        j++;
                        worKsheeT.Cells[i, 1] = j.ToString();
                        worKsheeT.Cells[i, 2] = v.DATE.ToShortDateString();
                        worKsheeT.Cells[i, 3] = v.VNO.ToString();
                        worKsheeT.Cells[i, 4] = v.EID;
                        worKsheeT.Cells[i, 5] = v.DrAccount.Account.Name;
                        worKsheeT.Cells[i, 6] = v.Basic;
                        worKsheeT.Cells[i, 7] = v.Total;
                    }
                    Microsoft.Office.Interop.Excel.Range xLSRanges = worKsheeT.Range["A5", "g" + i];
                    Microsoft.Office.Interop.Excel.Borders border = xLSRanges.Borders;
                    border.LineStyle = Microsoft.Office.Interop.Excel.XlLineStyle.xlContinuous;
                    border.Weight = 2D;

                    xLSRanges = worKsheeT.Range["f6", "g" + i];
                    xLSRanges.NumberFormat = "0.00";
                    xLSRanges = worKsheeT.Range["g6", "g" + i];
                    xLSRanges.NumberFormat = "0.00";
                    xLSRanges = worKsheeT.Range["A5", "g5"];
                    xLSRanges.Interior.Color = Microsoft.Office.Interop.Excel.XlRgbColor.rgbLightBlue;


                    int k = i;
                    i++;
                    int frange_start = i;
                    worKsheeT.Cells[i, 2] = "Total";


                    var crt = (from cr in sorted.AsEnumerable() select Convert.ToDouble(cr.Total)).Sum();
                    worKsheeT.Cells[i, 7] = crt;

                    //range = worKsheeT.Cells[i, 8];
                    //range.Formula = "=Sum(h:" + "h" + i + ")";
                    //range = worKsheeT.Cells[i, 7];
                    //range.Formula = "=Sum(g:" + "g" + i + ")";


                    xLSRanges = worKsheeT.Range["A" + frange_start, "g" + i];
                    xLSRanges.Font.Bold = true;
                    xLSRanges = worKsheeT.Range["E" + frange_start, "g" + i];
                    xLSRanges.NumberFormat = "0.00";

                }
                File.Delete(fileName);
                workbook.SaveAs(fileName);

                workbook.Close();

                Process.Start("EXCEL", fileName);


            }
            catch (Exception e3)
            {

                MessageBox.Show(e3.Message.ToString());
            }
        }

        private void btn_pdf_Click(object sender, RoutedEventArgs e)
        {
            try
            {

                if (wordFname == null)
                {
                    wordFname = CreateWordDoc();
                }
                if (pdfFname == null)
                {
                    pdfFname = ReportExport.WordExport.CreatePDF(wordFname);
                }

                if (pdfFname != null) Process.Start("AcroRd32.exe", pdfFname);

            }
            catch (Exception e1)
            {
                MessageBox.Show(e1.Message.ToString());
            }
        }

        private void btn_xps_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (wordFname == null)
                {
                    wordFname = CreateWordDoc();
                }
                if (xpsFname == null && wordFname != null)
                {
                    xpsFname = ReportExport.WordExport.CreateXPS(wordFname);
                }
                if (xpsFname != null) Process.Start("explorer.exe", xpsFname);
            }
            catch (Exception e1)
            {
                MessageBox.Show(e1.Message.ToString());
            }
        }
        void Refresh()
        {
            try
            {
                ClearReportcache();
                report = ViewModels_Variables.ModelViews.Payrolls.ToList(); 
                if (ViewModels_Variables.ModelViews.Payrolls != null && ViewModels_Variables.ModelViews.Payrolls.Count > 0 && ViewModels_Variables.ModelViews.Accounts != null && ViewModels_Variables.ModelViews.Accounts.Count > 0)
                {
                    if (cmb_ACCOUNTS.SelectedItem != null && cmb_voucher.SelectedItem==null)
                    {
                        var slctd = (Model.AccountModel)cmb_ACCOUNTS.SelectedItem;
                        report = ViewModels_Variables.ModelViews.Payrolls.Where((x) => x.DATE >= dtp_from.SelectedDate && x.DATE <= dtp_to.SelectedDate && x.DrAccount.Account.ID == slctd.ID);

                    }
                    else if (cmb_ACCOUNTS.SelectedItem != null && cmb_voucher.SelectedItem != null)
                    {
                        var slctd = (Model.AccountModel)cmb_ACCOUNTS.SelectedItem;
                        report = ViewModels_Variables.ModelViews.Payrolls.Where((x) => x.DATE >= dtp_from.SelectedDate && x.DATE <= dtp_to.SelectedDate && x.DrAccount.Account.ID == slctd.ID  );

                    }
                    else if (cmb_ACCOUNTS.SelectedItem == null && cmb_voucher.SelectedItem != null)
                    {
                        var slctd = (Model.AccountModel)cmb_ACCOUNTS.SelectedItem;
                        report = ViewModels_Variables.ModelViews.Payrolls.Where((x) => x.DATE >= dtp_from.SelectedDate && x.DATE <= dtp_to.SelectedDate    );

                    }
                    else
                    {
                        report = ViewModels_Variables.ModelViews.Payrolls.Where((x) => x.DATE >= dtp_from.SelectedDate && x.DATE <= dtp_to.SelectedDate);

                    }

                    rep_grid.ItemsSource = report;
                    lblTOTAL.Text = report.Sum((s) => s.Total).ToString("0.00");
                }
            }


            catch (Exception er)
            {
                MessageBox.Show(er.Message.ToString());
            }

        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            try
            {
                dtp_to.SelectedDate = DateTime.Now.Date;
                dtp_from.SelectedDate = public_members._sysDate[0];


                if (ViewModels_Variables.ModelViews.Payrolls.Count <= 0)
                {
                    DB.MonthlyPayroll.Fetch();
                    ViewModels_Variables.ModelViews.MonthlyPayRolls_To_List();
                }
                var accs = (from x in ViewModels_Variables.ModelViews.Payrolls select x.DrAccount).Distinct();
                var vou = (from x in ViewModels_Variables.ModelViews.PayrollEntryVouchers select x.Voucher).Distinct();
                cmb_voucher.ItemsSource = vou;

                cmb_ACCOUNTS.ItemsSource = accs;
                this.DataContext = ViewModels_Variables.ModelViews;
               
                Refresh();

            }
            catch (Exception er)
            {
                MessageBox.Show(er.Message.ToString());
            }
        }

        private void cmb_ACCOUNTS_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            try
            {
                Refresh();
            }
            catch (Exception er)
            {
                MessageBox.Show(er.Message.ToString());
            }
        }

        private void dtp_from_SelectedDateChanged(object sender, SelectionChangedEventArgs e)
        {
            try
            {
                Refresh();
            }
            catch (Exception er)
            {
                MessageBox.Show(er.Message.ToString());
            }
        }

        private void dtp_to_SelectedDateChanged(object sender, SelectionChangedEventArgs e)
        {
            try
            {
                Refresh();
            }
            catch (Exception er)
            {
                MessageBox.Show(er.Message.ToString());
            }
        }

        private void cmb_ACCOUNTS_GotFocus(object sender, RoutedEventArgs e)
        {
            try
            {
                cmb_ACCOUNTS.IsDropDownOpen = true;
            }
            catch (Exception er)
            {

                throw;
            }
        }
    }
}
