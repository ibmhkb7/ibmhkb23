using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BankManagementBO;
using BankManagementBLL;
using System.Data.SqlClient;
using System.Data;

namespace BankManagementUI.Executive
{
    public partial class WebForm2 : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string constr = "Data Source=ingnrilpsql01;Initial Catalog=AHD16_AMS89_Group7;User id=a37;Password=a37";
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT * FROM  State"))
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.Connection = con;
                            con.Open();
                            ddlState.DataSource = cmd.ExecuteReader();
                            ddlState.DataTextField = "StateName";
                            ddlState.DataValueField = "StateId";
                            ddlState.DataBind();
                        con.Close();
                    }
                }
                ddlState.Items.Insert(0, new ListItem("--Select State--", "0"));
               
               
            }
        }

        protected void CustomerAdd_Click(object sender, EventArgs e)
        {
            CustomerBO customer = new CustomerBO();
            customer.CustomerName = txtCustomerName.Text;
            customer.Age = 0;
            customer.AddressLine1 = txtAddress1.Text;
            customer.AddressLine2 = txtAddress2.Text;
            customer.Dob = Convert.ToDateTime(txtDate.Text);
            customer.State = ddlState.SelectedItem.Text;
            customer.City = ddlCity.SelectedValue;

            CustomerBLL customerBLL = new CustomerBLL();
             
            try
            {
                customer.CustomerSSNID= customerBLL.CustomerInsert(customer);
                if (customer.CustomerSSNID > 0)
                    Message.Text = "Customer creation initiated And CustomerId Is "+customer.CustomerSSNID;

                else
                    Message.Text = "Failed in try block";
            }
            catch(Exception ex)
            {
                Message.Text = "Failed";
            }


        }

        protected void ddlState_TextChanged(object sender, EventArgs e)
        {

        }
       

        protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
        {
            Message.Text = "Hello";

            string constr = "Data Source=ingnrilpsql01;Initial Catalog=AHD16_AMS89_Group7;User id=a37;Password=a37";
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT City FROM  StateCity where StateId="+ddlState.SelectedValue))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    ddlCity.DataSource = cmd.ExecuteReader();
                    ddlCity.DataTextField = "City";
                    ddlCity.DataValueField = "City";
                    ddlCity.DataBind();
                    con.Close();
                }
            }
            ddlCity.Items.Insert(0, new ListItem("--Select City--", "0"));
        }
    }
}