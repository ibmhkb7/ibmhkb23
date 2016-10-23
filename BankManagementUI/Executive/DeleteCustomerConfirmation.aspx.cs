using BankManagementBLL;
using BankManagementBO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BankManagementUI.Executive
{
    public partial class DeleteCustomerConfirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            long id = Convert.ToInt32(Request.QueryString["CustomerId"].ToString());
            List<CustomerBO> getAllCustomer = new List<CustomerBO>();
            CustomerBLL getAllCustomerBLL = new CustomerBLL();
            try
            {

                getAllCustomer = getAllCustomerBLL.ViewCustomerById(id);

                lblCustomerID.Text = lblCustomerID.Text + Convert.ToString(getAllCustomer[0].CustomerSSNID);
                lblCustometName.Text = lblCustometName.Text + Convert.ToString(getAllCustomer[0].CustomerName);
                lblAge.Text = lblAge.Text + Convert.ToString(getAllCustomer[0].Age);
                lblAddress.Text = lblAddress.Text + Convert.ToString(getAllCustomer[0].AddressLine1 + " " + getAllCustomer[0].AddressLine2 + " " + getAllCustomer[0].State + " " + getAllCustomer[0].City);
                lblStatus.Text = lblStatus.Text + "Active";


            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            long id = Convert.ToInt32(Request.QueryString["CustomerId"].ToString());
           
            CustomerBLL status= new CustomerBLL();
            int n = status.DeactiveCustomer(id);
            if(id>0)
            {
                Label1.Text = "Successfully Added";
            }
            else
            {
                Label1.Text = "Failed";
            }
        }
    }
}