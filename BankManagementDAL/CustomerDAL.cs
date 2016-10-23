using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BankManagementBO;
using System.Data.SqlClient;
using System.Data;

namespace BankManagementDAL
{
   public  class CustomerDAL
    {
        public CustomerBO CustomerInsert(CustomerBO customer)
        {

            string connectionString = "Data Source=HKB;Initial Catalog=TCS_ILP;Integrated Security=True"; 
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("usp_Customer_Creation", con);
            cmd.CommandType = CommandType.StoredProcedure;
           cmd.Parameters.AddWithValue("@CustomerName",customer.CustomerName);
         
           cmd.Parameters.AddWithValue("@Dob", Convert.ToString(customer.Dob));

              var today = DateTime.Today;
              int age = Convert.ToInt32(today.Year - customer.Dob.Year);
              cmd.Parameters.AddWithValue("@Age", age);
           cmd.Parameters.AddWithValue("@AddressLine1", customer.AddressLine1);
           cmd.Parameters.AddWithValue("@AddressLine2", customer.AddressLine2);
           cmd.Parameters.AddWithValue("@City", customer.City);
           cmd.Parameters.AddWithValue("@State",customer.State);
           cmd.Parameters.AddWithValue("@Status", "Pending");
           cmd.Parameters.AddWithValue("@Message", " Customer Added");
           cmd.Parameters.AddWithValue("@LastUpdate", Convert.ToString(DateTime.Now));
           //string dateWithFormat = date.ToLongDateString();
           SqlParameter CustomerID = new SqlParameter("@Customer_SSN_ID", SqlDbType.BigInt);
           CustomerID.Direction = ParameterDirection.Output;
           cmd.Parameters.Add(CustomerID);
         
          
            int noOfRows;
            try
            {
              noOfRows = cmd.ExecuteNonQuery();
            }
             catch (Exception Ex)
            {
                throw Ex;
            }
          

            con.Close();
            CustomerBO cust = new CustomerBO() ;
            if (noOfRows > 0)
            {
                try
                {
                    cust.CustomerSSNID = Convert.ToInt32(cmd.Parameters["@Customer_SSN_ID"].Value);
                }
                catch (Exception Ex)
                {
                    throw Ex;
                }
            }
            else
            {
                cust.CustomerSSNID = 0;
            }

            return cust;

        }
        public List<CustomerBO> CustomerView()
        {
            List<CustomerBO> CustomerViewAll = new List<CustomerBO>();

            string connectionString = "Data Source=HKB;Initial Catalog=TCS_ILP;Integrated Security=True"; 
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("View_Customer", con);
            cmd.CommandType = CommandType.StoredProcedure;
            DataSet dsData = new DataSet();
            SqlDataAdapter objSqlAdapter = new SqlDataAdapter(cmd);
            objSqlAdapter.Fill(dsData);

            con.Close();

            if (dsData != null)
            {
                if (dsData.Tables.Count > 0)
                {
                    foreach (DataRow dtCustDtls in dsData.Tables[0].Rows)
                    {
                        CustomerBO objCustDtls = new CustomerBO();
                        objCustDtls.CustomerSSNID = Convert.ToInt32(dtCustDtls["Customer_SSN_ID"]);
                        objCustDtls.CustomerName = Convert.ToString(dtCustDtls["CustomerName"]);
                        objCustDtls.AddressLine1 = Convert.ToString(dtCustDtls["AddressLine1"]);
                        objCustDtls.AddressLine2= Convert.ToString(dtCustDtls["AddressLine2"]);
                        objCustDtls.City=Convert.ToString(dtCustDtls["City"]);
                        objCustDtls.State=Convert.ToString(dtCustDtls["State"]);
                        objCustDtls.Age = Convert.ToInt32(dtCustDtls["Age"]);

                        CustomerViewAll.Add(objCustDtls);
                    }
                }
            }


            return CustomerViewAll;
        }
        public List<CustomerBO> CustomerViewById(long Id)
        {
            List<CustomerBO> CustomerViewAll = new List<CustomerBO>();

            string connectionString = "Data Source=HKB;Initial Catalog=TCS_ILP;Integrated Security=True";
            SqlConnection con = new SqlConnection(connectionString); con.Open();
            SqlCommand cmd = new SqlCommand("View_Customer_By_Id", con);
            cmd.Parameters.AddWithValue("@Customer_SSN_ID", Id);
            cmd.CommandType = CommandType.StoredProcedure;
            DataSet dsData = new DataSet();
            SqlDataAdapter objSqlAdapter = new SqlDataAdapter(cmd);
            objSqlAdapter.Fill(dsData);

            con.Close();

            if (dsData != null)
            {
                if (dsData.Tables.Count > 0)
                {
                    foreach (DataRow dtCustDtls in dsData.Tables[0].Rows)
                    {
                        CustomerBO objCustDtls = new CustomerBO();
                        objCustDtls.CustomerSSNID = Convert.ToInt32(dtCustDtls["Customer_SSN_ID"]);
                        objCustDtls.CustomerName = Convert.ToString(dtCustDtls["CustomerName"]);
                        objCustDtls.AddressLine1 = Convert.ToString(dtCustDtls["AddressLine1"]);
                        objCustDtls.AddressLine2 = Convert.ToString(dtCustDtls["AddressLine2"]);
                        objCustDtls.City = Convert.ToString(dtCustDtls["City"]);
                        objCustDtls.State = Convert.ToString(dtCustDtls["State"]);
                        objCustDtls.Age = Convert.ToInt32(dtCustDtls["Age"]);

                        CustomerViewAll.Add(objCustDtls);
                    }
                }
            }


            return CustomerViewAll;
        }
        public List<CustomerBO> CustomerDeleteById(long Id)
        {
            List<CustomerBO> CustomerViewAll = new List<CustomerBO>();

            string connectionString = "Data Source=HKB;Initial Catalog=TCS_ILP;Integrated Security=True";
            SqlConnection con = new SqlConnection(connectionString); con.Open();
            SqlCommand cmd = new SqlCommand("View_Customer_By_Id", con);
            cmd.Parameters.AddWithValue("@Customer_SSN_ID", Id);
            cmd.CommandType = CommandType.StoredProcedure;
            DataSet dsData = new DataSet();
            SqlDataAdapter objSqlAdapter = new SqlDataAdapter(cmd);
            objSqlAdapter.Fill(dsData);

            con.Close();

            if (dsData != null)
            {
                if (dsData.Tables.Count > 0)
                {
                    foreach (DataRow dtCustDtls in dsData.Tables[0].Rows)
                    {
                        CustomerBO objCustDtls = new CustomerBO();
                        objCustDtls.CustomerSSNID = Convert.ToInt32(dtCustDtls["Customer_SSN_ID"]);
                        objCustDtls.CustomerName = Convert.ToString(dtCustDtls["CustomerName"]);
                        objCustDtls.AddressLine1 = Convert.ToString(dtCustDtls["AddressLine1"]);
                        objCustDtls.AddressLine2 = Convert.ToString(dtCustDtls["AddressLine2"]);
                        objCustDtls.City = Convert.ToString(dtCustDtls["City"]);
                        objCustDtls.State = Convert.ToString(dtCustDtls["State"]);
                        objCustDtls.Age = Convert.ToInt32(dtCustDtls["Age"]);

                        CustomerViewAll.Add(objCustDtls);
                    }
                }
            }


            return CustomerViewAll;
        }
        public int DeactiveCustomer(long id)
        {
            string connectionString = "Data Source=HKB;Initial Catalog=TCS_ILP;Integrated Security=True";
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("usp_Update_Status", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CustomerId",id);

            int noOfRows = 0 ;
            try
            {
                noOfRows = cmd.ExecuteNonQuery();
            }
            catch (Exception Ex)
            {
                throw Ex;
            }


            con.Close();
            return noOfRows;
        }
        
    }
}
