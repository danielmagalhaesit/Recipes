using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Antonio Daniel de Oliveira Magalhaes - 300883536
public partial class Recipes : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        HttpCookie themeCookie = Request.Cookies.Get("ThemeCookie");

        if (themeCookie != null)
        {
            Page.Theme = themeCookie.Value;
        }
    }

    protected void lvtRecipes_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "RecipeDetails")
        {
            Response.Redirect("RecipeDetails.aspx?IdRecipe=" + e.CommandArgument);
        }
    }
}
//Antonio Daniel de Oliveira Magalhaes - 300883536