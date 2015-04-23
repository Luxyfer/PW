using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PW_TFinal_V1
{
    public partial class MarcarConsulta : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            btnSubmit.ServerClick += new EventHandler(btnSubmit_Click);
            
        }
        protected void Nome_TextChanged(object sender, EventArgs e)
        {
            bool flag = false;
            NomeError.Visible = false;
            AnimalLabel.Visible = true;
            animalMC.Visible = true;
            animalMC.Items.Clear();
            string CnnString = ConfigurationManager.ConnectionStrings["BaseDadosSQL"].ConnectionString;
            SqlConnection SqlCnn = new SqlConnection(CnnString);
            SqlCnn.Open();
            
            string verNome = "Select Animal.Cod_Animal,Animal.Nome_Animal From Animal, Dono, Cliente where Cliente.Username ='" + Nome.Text + "' and Dono.Cod_Animal=Animal.Cod_Animal and Dono.Cod_Cliente=Cliente.Cod_Cliente";

            SqlCommand Cmd_verNome = new SqlCommand(verNome, SqlCnn);
            SqlDataReader reader;

            ListItem newItem = new ListItem();
            reader = Cmd_verNome.ExecuteReader();
            while(reader.Read())
            {
                flag = true;
                newItem = new ListItem();
                newItem.Text = reader["Nome_Animal"].ToString();
                newItem.Value = reader["Cod_Animal"].ToString();
                animalMC.Items.Add(newItem);
            }
            if (flag == false)
            {
                NomeError.Visible = true;
                NomeError.Text = "* Nome do dono inexistente!";
                Nome.Text = "";
                AnimalLabel.Visible = false;
                animalMC.Visible = false;
            }
            reader.Close();
            SqlCnn.Close();
        }
        void btnSubmit_Click(object sender, EventArgs e)
        {
            string CnnString = ConfigurationManager.ConnectionStrings["BaseDadosSQL"].ConnectionString;
            SqlConnection SqlCnn = new SqlConnection(CnnString);
            SqlCnn.Open();

            
            string select = "select count(Cod_Consulta) from Consulta";
            SqlCommand Cmd = new SqlCommand(select, SqlCnn);
   
            int Cod_Consulta = (int)Cmd.ExecuteScalar()+1;

            string insert = "insert into Consulta(Cod_Consulta,Nome_Animal,Morada,Tipo,Data,Hora) values (@Cod_Consulta,@Nome_Animal,@Morada,@Tipo,@Data,@Hora)";
            Cmd.CommandText = insert;            
            Cmd.Parameters.AddWithValue("@Cod_Consulta",Cod_Consulta);
            Cmd.Parameters.AddWithValue("@Morada", Morada.Text);
            Cmd.Parameters.AddWithValue("@Nome_Animal",animalMC.SelectedItem.Text);
            Cmd.Parameters.AddWithValue("@Tipo", Tipo.SelectedValue);
            string Data = Dia.Text + " / " + Mes.Text + " / " + Ano.Text;
            Cmd.Parameters.AddWithValue("@Data", Data);
            Cmd.Parameters.AddWithValue("@Hora", Hora.Text);

            Cmd.ExecuteNonQuery();
            
            SqlCnn.Close();
            Response.Redirect(Request.RawUrl);
            
        }

        protected void Hora_TextChanged(object sender, EventArgs e)
        {
            HoraError.Visible = false;
            string CnnString = ConfigurationManager.ConnectionStrings["BaseDadosSQL"].ConnectionString;
            SqlConnection SqlCnn = new SqlConnection(CnnString);
            SqlCnn.Open();
            string Data = Dia.Text + " / " + Mes.Text + " / " + Ano.Text;
            string select = "Select Hora From Consulta where Data = '" + Data + "'";
            SqlCommand Cmd = new SqlCommand(select, SqlCnn);
            SqlDataReader reader = Cmd.ExecuteReader();
            while (reader.Read())
            {
                string Horas = reader["Hora"].ToString();
                if (Horas.Equals(Hora.Text) == true)
                {
                    Hora.Text = "";
                    HoraError.Visible = true;
                    HoraError.Text = "* Hora não disponível!";
                }
            }
            SqlCnn.Close();
        }



    }
}