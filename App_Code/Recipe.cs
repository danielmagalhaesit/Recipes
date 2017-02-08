using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Recipe
/// </summary>
public class Recipe
{

    
    public string Title { get; set; }
    public string SubmittedBY { get; set; }
    public string Categorie { get; set; }
    public string CookingTime { get; set; }
    public int NumberOfServings { get; set; }
    public string RecipDescription { get; set; }

    public List<Ingredient> ingredients { get; set; }
    public int IdRecipe { get; set; }
    public string imageRecipe { get; set; }

    public Recipe()
    {

    }
}