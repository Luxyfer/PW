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
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string CnnString = ConfigurationManager.ConnectionStrings["BaseDadosSQL"].ConnectionString;            
            SqlConnection SqlCnn = new SqlConnection(CnnString);
            SqlCnn.Open();

            string select1 = "select Titulo,Data_Noticia from Noticias";
            SqlCommand Cmd = new SqlCommand(select1, SqlCnn);
            SqlDataReader reader = Cmd.ExecuteReader();
            reader.Read();
            Noticia1.Text = reader["Titulo"].ToString();
            reader.Read();
            Noticia2.Text = reader["Titulo"].ToString();
            reader.Read();
            Noticia3.Text = reader["Titulo"].ToString();
            reader.Read();
            Noticia4.Text = reader["Titulo"].ToString();
            reader.Close();

            string select2 = "select Texto from Noticias";
            SqlCommand Comd = new SqlCommand(select2, SqlCnn);
            SqlDataReader readr = Comd.ExecuteReader();
            readr.Read();
            Corpo1.Text = readr["Texto"].ToString();
            readr.Read();
            Corpo2.Text = readr["Texto"].ToString();
            readr.Read();
            Corpo3.Text = readr["Texto"].ToString();
            readr.Read();
            Corpo4.Text = readr["Texto"].ToString();
            readr.Close();
            

            SqlCnn.Close();
        }
    }
}