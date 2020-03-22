using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace MSISDepartmentApp
{
    public class MSISUser
    {
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string Lastname { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string Salt { get; set; }

        private static Credential credential { get; set; }

        public MSISUser()
        {
            credential = new Credential();
        }

        public bool InsertUser()
        {
            using (SqlConnection connection = new SqlConnection(credential.ConnectionString))
            using (SqlCommand command = new SqlCommand("NewUser_Insert", connection))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@FirstName", this.FirstName);
                command.Parameters.AddWithValue("@LastName", this.Lastname);
                command.Parameters.AddWithValue("@UserName", this.UserName);
                command.Parameters.AddWithValue("@Password", this.Password);
                command.Parameters.AddWithValue("@Salt", this.Salt);

                connection.Open();

                using (SqlDataReader reader = command.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        bool result = false;

                        while(reader.Read())
                        {
                            result = Convert.ToBoolean(reader["result"].ToString());                           

                        }

                        return result;
                    }
                    else
                    {
                        return false;
                    }
                }

                //return true;

            }
        }

        public void UpdateUser()
        {
            using (SqlConnection connection = new SqlConnection(credential.ConnectionString))
            using (SqlCommand command = new SqlCommand("User_Update", connection))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@Id", this.Id);
                command.Parameters.AddWithValue("@Password", this.Password);
                command.Parameters.AddWithValue("@Salt", this.Salt);

                connection.Open();

                command.ExecuteReader();

                //return true;

            }
        }

        public static MSISUser GetUser(Credential credential, string UserName)
        {
            using (SqlConnection connection = new SqlConnection(credential.ConnectionString))
            using (SqlCommand command = new SqlCommand("User_Select", connection))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@UserName", UserName);

                connection.Open();

                using (SqlDataReader reader = command.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        return CreateUser(reader);
                    }
                    else
                    {
                        return new MSISUser();
                    }
                }

            }
        }

        private static MSISUser CreateUser(SqlDataReader reader)
        {
            MSISUser e = new MSISUser();

            try
            {
                while (reader.Read())
                {


                    e.Id = Convert.ToInt32(reader["Id"].ToString());
                    e.FirstName = reader["FirstName"].ToString();
                    e.Lastname = reader["LastName"].ToString();
                    e.UserName = reader["UserName"].ToString();
                    e.Password = reader["Password"].ToString();
                    e.Salt = reader["Salt"].ToString();

                }
            }
            catch (Exception ex)
            {
                string s = ex.ToString();
            }

            return e;
        }
    }
}