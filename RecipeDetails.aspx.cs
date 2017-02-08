using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Antonio Daniel de Oliveira Magalhaes - 300883536

public partial class RecipeDetails : System.Web.UI.Page
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
        int id = Convert.ToInt32(Request.QueryString["IdRecipe"]);
        imgRecipe.ImageUrl = RecipeRepository.getImage(id);

    }



}