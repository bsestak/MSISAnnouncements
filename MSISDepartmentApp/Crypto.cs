using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace MSISDepartmentApp
{
    public class Crypto
    {
        public static List<string> CreateHash(string Password)
        {
            List<string> HashItems = new List<string>();

            string salt = GetSalt();

            using (SHA256 Hash = SHA256.Create())
            {
                byte[] bytes = Hash.ComputeHash(Encoding.UTF8.GetBytes(Password + salt));

                StringBuilder builder = new StringBuilder();
                for (int i = 0; i < bytes.Length; i++)
                {
                    builder.Append(bytes[i].ToString("x2"));
                }
                
                HashItems.Add(builder.ToString());
                HashItems.Add(salt);

                return HashItems;
            }
        }

        public static string CreateHash(string Password, string dbsalt)
        {
            using (SHA256 Hash = SHA256.Create())
            {
                byte[] bytes = Hash.ComputeHash(Encoding.UTF8.GetBytes(Password + dbsalt));

                StringBuilder builder = new StringBuilder();
                for (int i = 0; i < bytes.Length; i++)
                {
                    builder.Append(bytes[i].ToString("x2"));
                }

                return builder.ToString();
            }
        }

        private static string GetSalt()
        {
            var random = new RNGCryptoServiceProvider();

            int MaxLength = 32;

            byte[] salt = new byte[MaxLength];

            random.GetNonZeroBytes(salt);

            return Convert.ToBase64String(salt);
        }
    }
}