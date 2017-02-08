using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using Oracle.ManagedDataAccess.Client;
using System.Configuration;

//Antonio Daniel de Oliveira Magalhaes - 300883536

/// <summary>
/// Summary description for RecipeRepository
/// </summary>
public class RecipeRepository
{
    private static readonly string connString = ConfigurationManager.ConnectionStrings["RecipesConnectionString"].ConnectionString;

    private static List<Recipe> recipes;


    public RecipeRepository()
    {

    }

    public List<Recipe> GetRecipes()
    {
        return recipes.ToList();
    }

    public void AddRecipes(Recipe recipe)
    {
        try
        {
            OracleConnection conn = new OracleConnection(connString);
            List<OracleParameter> queryParam = new List<OracleParameter>();

            string sql = "INSERT INTO RECIPES (IDRECIPE, RECIPENAME, SUBMITTEDBY, CATEGORYRECIPE, COOKINGTIME, NUMBEROFSERVINGS, RECIPEDESCRIPTION, IMAGE)" +
               " VALUES (SEQ_ID_RECIPE.NEXTVAL, :RecipeName, :SubmittedBy, :CategoryRecipe, :CookingTime, :RecipeDescription, :NumberOfServings, :Image);";

            OracleCommand aCommand = new OracleCommand(sql, conn);


            aCommand.Parameters.Add("RecipeName", OracleDbType.NVarchar2);
            aCommand.Parameters.Add("SubmittedBy", OracleDbType.NVarchar2);
            aCommand.Parameters.Add("CategoryRecipe", OracleDbType.NVarchar2);
            aCommand.Parameters.Add("CookingTime", OracleDbType.NVarchar2);
            aCommand.Parameters.Add("NumberOfServings", OracleDbType.Int32);
            aCommand.Parameters.Add("RecipeDescription", OracleDbType.NVarchar2);
            aCommand.Parameters.Add("Image", OracleDbType.NVarchar2);


            aCommand.Parameters["RecipeName"].Value = recipe.Title;
            aCommand.Parameters["SubmittedBy"].Value = recipe.SubmittedBY;
            aCommand.Parameters["CategoryRecipe"].Value = recipe.Categorie;
            aCommand.Parameters["CookingTime"].Value = recipe.CookingTime;
            aCommand.Parameters["NumberOfServings"].Value = recipe.NumberOfServings;
            aCommand.Parameters["RecipeDescription"].Value = recipe.RecipDescription;
            aCommand.Parameters["Image"].Value = recipe.imageRecipe;

            //Antonio Daniel de Oliveira Magalhaes - 300883536

            aCommand.Connection.Open();

            aCommand.ExecuteNonQuery();

            recipe.IdRecipe = Convert.ToInt32(aCommand.Parameters["IdRecipe"].Value.ToString());


            foreach (Ingredient i in recipe.ingredients)
            {
                aCommand.CommandText = "INSERT INTO INGREDIENTS (IDINGREDIENT, INGREDIENTNAME, QUANTITY, UNITOFMEASURE, IDRECIPE) VALUES (SEQ_ID_INGREDIENT.NEXTVAL, :IngredientName, :Quantity, :UnitOfMeasure, :IdRecipe);";

                aCommand.Parameters.Clear();
                aCommand.Parameters.Add("IngredientName", OracleDbType.NVarchar2);
                aCommand.Parameters.Add("Quantity", OracleDbType.Double);
                aCommand.Parameters.Add("UnitOfMeasure", OracleDbType.NVarchar2);
                aCommand.Parameters.Add("IdRecipe", OracleDbType.Int32);

                aCommand.Parameters["IngredientName"].Value = i.IngredientNanme;
                aCommand.Parameters["Quantity"].Value = i.IngredientQuantity;
                aCommand.Parameters["UnitOfMeasure"].Value = i.IngredientUnity;
                aCommand.Parameters["IdRecipe"].Value = recipe.IdRecipe;

                aCommand.ExecuteNonQuery();
            }

            aCommand.Connection.Close();

        }
        catch (SqlException e)
        {
            Console.WriteLine(e.Message);
        }
        finally
        {

        }
    }

    public static string getImage(int id)
    {
        string img = null;
        OracleConnection conn = new OracleConnection(connString);

        string sql = "select image from RECIPES where IDRECIPE = :IdRecipe";

        OracleCommand aCommand = new OracleCommand(sql, conn);

        aCommand.Parameters.Add("IdRecipe", OracleDbType.Int32);
        aCommand.Parameters["IdRecipe"].Value = id;
        try
        {
            aCommand.Connection.Open();
            OracleDataReader reader = aCommand.ExecuteReader();
            while (reader.Read())
            {
                img = (string)reader["IMAGE"];
            }

        }
        finally
        {
            aCommand.Connection.Close();
        }
        return img;
    }

    //Antonio Daniel de Oliveira Magalhaes - 300883536
}