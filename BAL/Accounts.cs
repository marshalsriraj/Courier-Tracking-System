using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;


namespace BAL
{
    public class Accounts
    {
        public static List<Cts_User_Master> ValidateUser(string userid, string password)
        {
            return DAL.UserAccounts.ValidateUser(userid, password);
        }

    }
}
