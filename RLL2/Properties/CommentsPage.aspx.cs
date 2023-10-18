using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace RLL2.Properties
{
    public partial class CommentsPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       

        protected void Button1_Click(object sender, EventArgs e)
        {
            LblMsg.Visible = true;
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
               
                        cmd.CommandText = "insert into Feedback values(@un,@rating,@cmt)";
                        cmd.Parameters.AddWithValue("@un", TextBox3.Text.ToString());
                        cmd.Parameters.AddWithValue("@rating", TextBox1.Text.ToString());
                        cmd.Parameters.AddWithValue("@cmt", TextBox2.Text.ToString());
                      

                        con.Open();
                        int nor = cmd.ExecuteNonQuery();

                        con.Close();
                        if (nor > 0)
                        {
                            Response.Write("<script>alert('Feedback Updated Successfully!');</script>");
                        }
                        else
                        {
                            Response.Write("<script>alert('Feedback Updated Failed');</script>");
                        }

                       
                  


            }
            catch (Exception ex)
            {
                LblMsg.Text = ex.ToString();
            }
        }
    }
}