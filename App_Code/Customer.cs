using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Customer
{
    //private data
    private int customerID;
    private string name;
    private string address;
    private string city;
    private string state;
    private string zipcode;
    private string phone;
    private string email;

    //Default constructor
    public Customer()
    {
       
    }

    //your access mutators
    public int CustomerID
    {
        get
        {
            return customerID;
        }

        set
        {
            customerID = value;
        }
    }
    public string Name
    {
        get
        {
            return name;
        }

        set
        {
            name = value;
        }
    }
    public string Address
    {
        get
        {
            return address;
        }

        set
        {
            address = value;
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
    public string ZipCode
    {
        get
        {
            return zipcode;
        }

        set
        {
            zipcode = value;
        }
    }
    public string Phone
    {
        get
        {
            return phone;
        }
        set
        {
            phone = value;
        }
    }
    public string Email
    {
        get
        {
            return email;
        }

        set
        {
            email = value;
        }
    }
}