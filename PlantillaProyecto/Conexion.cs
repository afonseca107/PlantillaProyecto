using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;

namespace PlantillaProyecto
{
    public class Conexion
    {

        public SqlConnectionStringBuilder Init()
        {
            //Trae informacion de conexion
            string[] lines = File.ReadAllLines(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "App_Data\\Config.txt"));
            string server = lines[0].ToString().Trim();
            string user = lines[1].ToString().Trim();
            string password = lines[2].ToString().Trim();
            string basedatos = lines[3].ToString().Trim();


            //string server = "192.168.1.114";
            //string user = "sa";
            //string password = "tca";
            //pasa parametros de conexion a objeto 
            SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder
            {
                DataSource = server,
                UserID = user,
                Password = password,
                InitialCatalog = basedatos,
                MinPoolSize = 0,
                MaxPoolSize = 200,
                Pooling = true,
                ConnectTimeout = 200
            };
            return builder;
        }

        public DataTable ConsultaDT(string query)
        {
            DataTable dt = new DataTable();
            try
            {
                SqlConnectionStringBuilder builder = Init();
                using (SqlConnection connection = new SqlConnection(builder.ConnectionString))
                {
                    connection.Open();
                    using (SqlCommand comm = new SqlCommand(query, connection))
                    {
                        using (SqlDataAdapter da = new SqlDataAdapter())
                        {
                            comm.CommandTimeout = 120;
                            da.SelectCommand = comm;
                            da.Fill(dt);
                            return dt;
                        }
                    }
                }
            }
            catch (SqlException e)
            {
                GuardaError(e, "ErrorClaseCon");
                return dt;
            }
        }

        public string ConsultaStr(string query)
        {
            //
            string res = "";
            SqlConnectionStringBuilder builder = Init();
            try
            {
                using (SqlConnection connection = new SqlConnection(builder.ConnectionString))
                {
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        connection.Open();
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                return res = reader.GetValue(0).ToString();
                            }
                            else
                            {
                                return res;
                            }

                        }
                    }
                }
            }
            catch (Exception e)
            {
                GuardaError(e, "ErrorClaseCon");
                return res;
            }
        }

        public bool GuardaError(Exception e, string modulo)
        {
            try
            {
                string[] lines = File.ReadAllLines(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "App_Data\\Config.txt"));
                string server = lines[0].ToString().Trim();
                string suc = server.Substring(8, 1);
                string sucursal = lines[3].ToString().Trim();

                string fecha = DateTime.Now.ToString();
                string newFecha = fecha.Replace("/", "-");
                string newFecha2 = newFecha.Replace(":", "");
                string ruta = "C:\\Temp\\" + sucursal + "\\" + modulo + "\\" + @"ErrorLog_" + newFecha2 + "_" + suc + ".txt";
                if (!Directory.Exists(Path.GetDirectoryName("C:\\Temp\\" + sucursal + "\\" + modulo + "\\")))
                {
                    ruta = Directory.CreateDirectory(Path.GetDirectoryName("C:\\Temp\\" + sucursal + "\\" + modulo + "\\")) + @"ErrorLog_" + newFecha2 + "_" + suc + ".txt";
                }
                StreamWriter sr = new StreamWriter(ruta);
                sr.WriteLine(e.Message.ToString() + DateTime.Now);
                sr.Close();
                return true;
            }
            catch
            {
                return false;
            }
        }

    }
}