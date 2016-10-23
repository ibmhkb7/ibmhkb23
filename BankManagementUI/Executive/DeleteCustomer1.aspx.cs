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
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindGrid();

        }
        private void BindGrid()
        {
            List<CustomerBO> ViewAllCust = new List<CustomerBO>();
            CustomerBLL ViewAllCustomerBLL = new CustomerBLL();
            try
            {
                ViewAllCust = ViewAllCustomerBLL.ViewCustomer();
                GridView1.DataSource = ViewAllCust;
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
       
      protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs  e)
      {
      GridView1.PageIndex = e.NewPageIndex;
      BindGrid();
      }
      protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
      {
          if (e.CommandName == "cmddelete")
          {
              int index = Convert.ToInt32(e.CommandArgument);
              GridViewRow row = GridView1.Rows[index];
              Label1.Text = Convert.ToString(index);

              Response.Redirect("~/Executive/DeleteCustomerConfirmation.aspx?CustomerId=" + row.Cells[0].Text);
          }
      }   
    
        
    }
}