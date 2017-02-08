using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Antonio Daniel de Oliveira Magalhaes - 300883536

public partial class UCIngredients : System.Web.UI.UserControl
{
    public string IngredientName
    {
        get { return TextBoxUCIngredient.Text; }
    }
    public string GetTypeName { get { return TextBoxUCIngredient.GetType().FullName; } }
    public string GetTypeQuantity { get { return TextBoxUCQuantity.GetType().FullName; } }
    public string GetTypeUnit { get { return TextBoxUCUnit.GetType().FullName; } }

    public double Quantity
    {
        get {
            double qtd;
            if (Double.TryParse(TextBoxUCQuantity.Text, out qtd))
                return qtd;
            else
                return 0;
        }
    }
    public string Unit
    {
        get { return TextBoxUCUnit.Text; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
    }
}

//Antonio Daniel de Oliveira Magalhaes - 300883536


