using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

namespace ProectMedecinaAIS
{
    class Connector
    {
        MySqlConnection connection = new MySqlConnection("Server=localhost;Port=3306;username=FOX;password=12345; Database=medicina");
        public MySqlConnection GetConnection()
        {
            return connection;
        }

    }
}
