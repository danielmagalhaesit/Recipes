﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Search : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        
        HttpCookie themeCookie = Request.Cookies.Get("ThemeCookie");

        if (themeCookie != null)
        {
            Page.Theme = themeCookie.Value;
        }

    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }

}