using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PW_TFinal_V1
{
    public partial class Agenda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Data_TextChanged(object sender, EventArgs e)
        {
            
            GridView1.Visible = true;
            string CnnString = ConfigurationManager.ConnectionStrings["BaseDadosSQL"].ConnectionString;
            SqlConnection SqlCnn = new SqlConnection(CnnString);
            SqlCnn.Open();
            

            string select = "select Nome_Animal 'Nome do Animal' ,Tipo 'Tipo de Consulta',Morada,Hora from Consulta where data = '" + txtDate.Text + "'";
            SqlCommand cmd = new SqlCommand(select, SqlCnn);
            SqlDataReader dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();

            SqlCnn.Close();
        }

    }
}