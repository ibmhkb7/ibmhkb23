using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BankManagementBLL;
using BankManagementBO;

namespace BankManagementUI.Executive
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<CustomerBO> getAllCustomer = new List<CustomerBO>();
                CustomerBLL getAllCustomerBLL = new CustomerBLL();
                try
                {
                    getAllCustomer = getAllCustomerBLL.ViewCustomer();
                    GridView1.DataSource = getAllCustomer;
                    GridView1.DataBind();

                }
                catch (Exception ex)
                {
                    throw ex;
                }


            }

        }

        protected void btnButton_Click(object sender, EventArgs e)
        {
            List<CustomerBO> getAllCustomer = new List<CustomerBO>();
            CustomerBLL getAllCustomerBLL = new CustomerBLL();
            try
            {
                long CustomerId = Convert.ToInt32(txtSearch.Text);
                getAllCustomer = getAllCustomerBLL.ViewCustomerById(CustomerId);
                GridView1.DataSource = getAllCustomer;
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                throw ex;
            }

            
        }

        protected void btnViewAll_Click(object sender, EventArgs e)
        {
            List<CustomerBO> getAllCustomer = new List<CustomerBO>();
            CustomerBLL getAllCustomerBLL = new CustomerBLL();
            try
            {
                getAllCustomer = getAllCustomerBLL.ViewCustomer();
                GridView1.DataSource = getAllCustomer;
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

      
    }
}