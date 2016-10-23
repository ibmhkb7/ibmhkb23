using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BankManagementBO
{
 public class CustomerBO
    {
      long customerSSNID;
      string customerName;
      int age;
      string addressLine1;
      string addressLine2;
      string state;
      string city;
      DateTime dob;
  
      public long CustomerSSNID
      {
          get{
              return customerSSNID;
           }
          set{
              customerSSNID=value;
          }
      }
      public string CustomerName
      {
          get
          {
              return customerName;
          }
          set
          {
              customerName = value;
          }
      }
      public int Age
      {
          get
          {
              return age;
          }
          set
          {
              age = value;
          }

      }
      public string AddressLine1
      {
          get
          {
              return addressLine1;
          }
          set
          {
              addressLine1 = value;
          }
      }
      public string AddressLine2
      {
          get
          {
              return addressLine2;
          }
          set
          {
              addressLine2 = value;
          }
      }
      public string State
      {
          get
          {
              return state;
          }
          set
          {
              state = value;
          }
      }
     public string City
      {
          get
          {
              return city;
          }
         set
          {
              city = value;
          }
      }

     public DateTime Dob {
         get
         {
             return dob;
         }
         set
         {
             dob = value;
         }
     }
    }
}
