using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Customerlist
/// </summary>
public class Customerlist
{
    public List<Customer> customerList;
    public Customerlist()
    {
        customerList = new List<Customer>();
    }


    public Customer this[int index]
    {
        get
        {
            return customerList[index];
        }
        set
        {
            customerList[index] = value;
        }
    }

    public Customer this[string name]
    {
        get
        {
            foreach (Customer c in customerList)
            {
                if (c.Name == name)
                    return c;
            }
            return null;
        }
    }




    //Count your list
    public int Count()
    {
        return customerList.Count();
    }
    //Gets your list.
    public static Customerlist getCustomerList()
    {
        Customerlist cu = (Customerlist)HttpContext.Current.Session["Customers"];
        if (cu == null)
        {
            HttpContext.Current.Session["Customers"] = new Customerlist();
        }
        return (Customerlist)HttpContext.Current.Session["Customers"];
    }
    //add a customer to your list
    public void Additem(Customer o)
    {
        customerList.Add(o);
    }
    //remove a customer from your list
    public void RemoveAt(int index)
    {

        customerList.RemoveAt(index);
    }
    //Clear list
    public void Clear()
    {
        customerList.Clear();
    }

}
