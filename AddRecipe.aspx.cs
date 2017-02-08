using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Antonio Daniel de Oliveira Magalhaes
//300883536

public partial class AddRecipe : System.Web.UI.Page
{
    List<string> IdList = new List<string>();
    int counter = 0;

    protected override void LoadViewState(object savedState)
    {
        base.LoadViewState(savedState);

        IdList = (List<string>)ViewState["Idlist"];
        foreach (string id in IdList)
        {
            counter++;
            UCIngredients ucingredients = (UCIngredients)Page.LoadControl("~/UCIngredients.ascx");
            ucingredients.ID = id;
            pnlIngredient.Controls.Add(ucingredients);

        }
    }
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
        TextBoxSubmittedBy.Text = Context.User.Identity.Name;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            RecipeRepository recipeRepo = new RecipeRepository();

            Recipe recipe = new Recipe();

            recipe.Title = TextBoxName.Text;
            recipe.SubmittedBY = TextBoxSubmittedBy.Text;
            if (ddlCategory.SelectedValue == "")
            {
                recipe.Categorie = TextBoxCategory.Text;
            }
            else
            {
                recipe.Categorie = ddlCategory.SelectedValue;
            }
            recipe.CookingTime = TextBoxCookingTime.Text;
            recipe.NumberOfServings = Convert.ToInt32(TextBoxServings.Text);
            recipe.RecipDescription = TextBoxDescription.Text;
            recipe.imageRecipe = uplImage.FileName;

            List<Ingredient> ingredients = new List<Ingredient>();

            for (int i = 0; i < counter; i++)
            {
                UCIngredients ucingredients = pnlIngredient.FindControl("ucingredients" + i.ToString()) as UCIngredients;
                ingredients[i].IngredientNanme = ucingredients.IngredientName;
                ingredients[i].IngredientQuantity = ucingredients.Quantity;
                ingredients[i].IngredientUnity = ucingredients.Unit;
            }


            recipe.ingredients = ingredients;

            recipeRepo.AddRecipes(recipe);

        }
    }

    //Antonio Daniel de Oliveira Magalhaes
    //300883536

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AddRecipe.aspx");
    }

    protected void btnAddIngredient_Click(object sender, EventArgs e)
    {
        counter++;
        UCIngredients ucingredients = (UCIngredients)Page.LoadControl("~/UCIngredients.ascx");
        ucingredients.ID = "ucingredients" + counter.ToString();
        pnlIngredient.Controls.Add(ucingredients);
        IdList.Add(ucingredients.ID);
        ViewState["Idlist"] = IdList;
    }


    protected void btnUploadImg_Click(object sender, EventArgs e)
    {
        string message;
        string path;
        if (uplImage.HasFile)
        {
            string fileName = uplImage.FileName;
            path = MapPath(fileName);
            uplImage.SaveAs(path);
        }
        else
        {
            message = "Choose a image";
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Message", "alert(' " + message + "')", true);
        }


    }
}

//Antonio Daniel de Oliveira Magalhaes - 300883536