using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Globalization;
using System.Text.RegularExpressions;

namespace PW_TFinal_V1
{
    public partial class Medicamentos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnSubmit.ServerClick += new EventHandler(btnSubmit_Click);
        }
        protected void Nome_TextChanged(object sender, EventArgs e)
        {
            NomeError.Visible = false;
            bool flag = false;
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
            while (reader.Read())
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
            DataError.Visible = false;
            DataError.Text = "";
            string data_inicio = txtDate.Text;
            string data_final = txtDateFinal.Text;
            string [] datai = Regex.Split(data_inicio, " / ");
            string [] dataf = Regex.Split(data_final, " / ");
            for (int i = 3; i > 0; i--)
            {
                int di = Convert.ToInt32(datai[i-1]);
                int df = Convert.ToInt32(dataf[i-1]);
                if (di > df)
                {
                    DataError.Visible = true;
                    DataError.Text = "* Data inicio superior a data fim!";
                    return;
                }
            }

            string CnnString = ConfigurationManager.ConnectionStrings["BaseDadosSQL"].ConnectionString;          
            SqlConnection SqlCnn = new SqlConnection(CnnString);
            SqlCnn.Open();

            string select = "select count(Cod_Medicamento) from Medicamentos";
            SqlCommand Cmd = new SqlCommand(select, SqlCnn);
            Cmd.ExecuteNonQuery();
            Cmd.Parameters.AddWithValue("@Cod_Medicamento", (int)Cmd.ExecuteScalar()+1);

            string SqlStr = "insert into Medicamentos(Cod_Medicamento,Nome_Medicamento,Nome_Animal,Instrução, Data_Inicio, Data_Fim) values (@Cod_Medicamento,@Nome_Medicamento,@Nome_Animal,@Instrução,@Data_Inicio,@Data_Fim)";
            Cmd.CommandText = SqlStr;

            string dti = txtDate.Text; 
            string dtf = txtDateFinal.Text;
            
            Cmd.Parameters.AddWithValue("@Nome_Medicamento", Medicamento.Text);
            Cmd.Parameters.AddWithValue("@Nome_Animal", animalMC.SelectedItem.Text);
            Cmd.Parameters.AddWithValue("@Instrução", Descrição.Text);
            Cmd.Parameters.AddWithValue("@Data_Inicio", dti);
            Cmd.Parameters.AddWithValue("@Data_Fim", dtf);
            
            Cmd.ExecuteNonQuery();
            SqlCnn.Close();

            Response.Redirect(Request.RawUrl);


        }

        

    }
}