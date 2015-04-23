using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace PW_TFinal_V1
{
    public partial class Noticias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            btnSubmit.ServerClick += new EventHandler(btnSubmit_Click);
        }

        void btnSubmit_Click(object sender, EventArgs e)
        {
            string CnnString = ConfigurationManager.ConnectionStrings["BaseDadosSQL"].ConnectionString;
            SqlConnection SqlCnn = new SqlConnection(CnnString);
            SqlCnn.Open();

            string select = "select count(Cod_Noticia) from Noticias";
            SqlCommand Cmd = new SqlCommand(select, SqlCnn);
            Cmd.ExecuteNonQuery();
            Cmd.Parameters.AddWithValue("@Cod_Noticia",(int)Cmd.ExecuteScalar()+1);


            string SqlStr = "insert into Noticias(Cod_Noticia,Titulo,Texto, Data_Noticia) values (@Cod_Noticia,@Titulo,@Texto,@Data_Noticia)";
            Cmd.CommandText = SqlStr;
                
            Cmd.Parameters.AddWithValue("@Titulo", titulo.Text);
            Cmd.Parameters.AddWithValue("@Texto", noticia.Text);
            DateTime dt = DateTime.Now;
            Cmd.Parameters.AddWithValue("@Data_Noticia", dt);
                    
            Cmd.ExecuteNonQuery();
            SqlCnn.Close();

            Response.Redirect(Request.RawUrl);


        }
    }
}