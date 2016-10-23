using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BankManagementBO;
using BankManagementDAL;


namespace BankManagementBLL
{
    public class CustomerBLL
    {
        public long CustomerInsert(CustomerBO customer)
        {

            CustomerDAL customerDAL = new CustomerDAL();
            CustomerBO cust = new CustomerBO();
            try
            {
                cust = customerDAL.CustomerInsert(customer);
            }
            catch(Exception ex)
            {
                throw ex;
            }
            return cust.CustomerSSNID;
        }
        public List<CustomerBO>ViewCustomer()
        {
            List<CustomerBO> AllCustomer = new List<CustomerBO>();
            CustomerDAL GetAllCustomer = new CustomerDAL();
            AllCustomer = GetAllCustomer.CustomerView();
            return AllCustomer;
        }
        public List<CustomerBO> ViewCustomerById(long Id)
        {
            List<CustomerBO> AllCustomer = new List<CustomerBO>();
            CustomerDAL GetAllCustomer = new CustomerDAL();
            AllCustomer = GetAllCustomer.CustomerDeleteById(Id);
            return AllCustomer;
        }
        public int DeactiveCustomer(long id)
        {
            CustomerDAL status = new CustomerDAL();
            int n = status.DeactiveCustomer(id);
            return n;
        }
    }
}
