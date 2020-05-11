using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Aeroport
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sqlStatement = string.Empty;
            if (TextBox1.Text == "")
            {
                Label1.Text= "Введите имя пользователя";
                return;
            }
            if (TextBox2.Text == "")
            {
                Label1.Text =  "Введите пароль";
                return;
            }
           
            
            sqlStatement = "Select id,pass,login,role from Пользователи where login= '" + TextBox1.Text + "'";
            using (SqlConnection connection = new SqlConnection("Data Source=ULIA-PK;Initial Catalog=Aeroport;Integrated Security=True"))
            {
                SqlCommand cmd = new SqlCommand(sqlStatement, connection);
                connection.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                try
                {
                    while (reader.Read())
                    {

                        if (TextBox2.Text != Convert.ToString(reader[1]))
                           Label1.Text= "Пароль неверный!";
                        else
                            if (Convert.ToInt32(reader[3]) == 1)
                            {

                                Response.Redirect("Doc_Add.aspx");
                            }
                            else if (Convert.ToInt32(reader[3]) == 2)
                            {

                                Response.Redirect("Add.aspx");
                            }
                            else if (Convert.ToInt32(reader[3]) == 3)
                            {

                                Response.Redirect("Rep1.aspx");
                            }
                    }
                }
                finally
                {
                    reader.Close();
                }
            }
        }
    }
}
