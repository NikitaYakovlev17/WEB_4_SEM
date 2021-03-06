﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Aeroport
{
    public partial class Gruz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView("", "");
            }
        }
        private string GetConnectionString()
        {
            return System.Configuration.ConfigurationManager.ConnectionStrings["AeroportConnectionString"].ConnectionString;
        }

        #region Bind GridView
        private void BindGridView(string sortExp, string sortDir)
        {
            DataTable dt = new DataTable();
            SqlConnection connection = new SqlConnection(GetConnectionString());
            try
            {
                connection.Open();
                string sqlStatement = "SELECT * FROM Грузы";
                SqlCommand cmd = new SqlCommand(sqlStatement, connection);
                SqlDataAdapter sqlDa = new SqlDataAdapter(cmd);

                sqlDa.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    DataView myDataView = new DataView();
                    myDataView = dt.DefaultView;

                    if (sortExp != string.Empty)
                    {
                        // myDataView.Sort = string.Format("{0} {1}", sortExp, sortDir);
                    }
                    GridView1.DataSource = myDataView;
                    GridView1.DataBind();
                }
            }
            catch (SqlException ex)
            {
                string msg = "Fetch Error:";
                msg += ex.Message;
                throw new Exception(msg);
            }
            finally
            {
                connection.Close();
            }
        }
        #endregion

        #region Insert New or Update Record
        private void UpdateOrAddNewRecord(string par1, string par2, string par3, string par4, string par5, string par6, string par7, bool isUpdate)
        {
            SqlConnection connection = new SqlConnection(GetConnectionString());
            string sqlStatement = string.Empty;

            if (!isUpdate)
            {
                sqlStatement = "INSERT INTO Грузы" +
                "(КодГруза, ДатаПоступления, Статус, Вес, Таб, КодТипа, Примечание)" +
                "VALUES (@par1,@par2,@par3,@par4,@par5,@par6,@par7)";
            }
            else
            {
                sqlStatement = "UPDATE Грузы " +
                               "SET  КодГруза= @par1, ДатаПоступления= @par2, Статус= @par3, Вес= @par4, Таб= @par5, КодТипа= @par6, Примечание= @par7 " +
                                " WHERE КодГруза= @par1";
            }
            try
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlStatement, connection);
                cmd.Parameters.AddWithValue("@par1", par1);
                cmd.Parameters.AddWithValue("@par2", par2);
                cmd.Parameters.AddWithValue("@par3", par3);
                cmd.Parameters.AddWithValue("@par4", par4);
                cmd.Parameters.AddWithValue("@par5", par5);
                cmd.Parameters.AddWithValue("@par6", par6);
                cmd.Parameters.AddWithValue("@par7", par7);
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                string msg = "Insert/Update Error:";
                msg += ex.Message;
                throw new Exception(msg);

            }
            finally
            {
                connection.Close();
            }
        }
        #endregion

        #region Delete Record
        private void DeleteRecord(string ID)
        {
            SqlConnection connection = new SqlConnection(GetConnectionString());
            string sqlStatement = "DELETE FROM Сотрудники WHERE Таб= @ID";
            try
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand(sqlStatement, connection);
                cmd.Parameters.AddWithValue("@ID", ID);
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                string msg = "Deletion Error:";
                msg += ex.Message;
                throw new Exception(msg);

            }
            finally
            {
                connection.Close();
            }
        }
        #endregion



        protected void Button1_Click(object sender, EventArgs e)
        {
            UpdateOrAddNewRecord(TextBox8.Text, Convert.ToString(Calendar1.SelectedDate), Convert.ToString(DropDownList3.SelectedValue), TextBox11.Text,
                Convert.ToString(DropDownList2.SelectedValue), Convert.ToString(DropDownList1.SelectedValue), TextBox1.Text, false);
            //Re Bind GridView to reflect changes made
            BindGridView("", "");
            TextBox1.Text = "";
            TextBox8.Text = "";
            TextBox11.Text = "";


        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex; // turn to edit mode
            BindGridView("", ""); // Rebind GridView to show the data in edit mode
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1; //swicth back to default mode
            BindGridView("", "");// Rebind GridView to show the data in default mode
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //Accessing Edited values from the GridView
            string ID = GridView1.Rows[e.RowIndex].Cells[0].Text;
            string par1 = GridView1.Rows[e.RowIndex].Cells[1].Text;
            string par2 = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string par3 = GridView1.Rows[e.RowIndex].Cells[3].Text;
            string par4 = GridView1.Rows[e.RowIndex].Cells[4].Text;
            string par5 = GridView1.Rows[e.RowIndex].Cells[5].Text;
            string par6 = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;

            UpdateOrAddNewRecord(ID, par1, par2, par3, par4, par5, par6, true); // call update method
            GridView1.EditIndex = -1;
            BindGridView("", ""); // Rebind GridView to reflect changes made
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = GridView1.Rows[e.RowIndex].Cells[0].Text; //get the id of the selected row
            DeleteRecord(id);//call delete method
            BindGridView("", "");//rebind grid to reflect changes made
        }

        protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
        {
            BindGridView(e.SortExpression, ConvertSortDirectionToSql(e.SortDirection));
        }

        private string ConvertSortDirectionToSql(SortDirection sortDirection)
        {
            string newSortDirection = String.Empty;

            switch (sortDirection)
            {
                case SortDirection.Ascending:
                    newSortDirection = "ASC";
                    break;

                case SortDirection.Descending:
                    newSortDirection = "DESC";
                    break;
            }

            return newSortDirection;
        }
    }
}