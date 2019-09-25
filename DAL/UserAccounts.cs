using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
   public class UserAccounts
    {
        public static List<Cts_User_Master> ValidateUser(string userid,string password)
        {
            using (DBContextDataContext db= new DBContextDataContext())
            {
                return db.Cts_User_Masters.Where(x => x.um_userId == userid && x.um_password == password).ToList();
            }
        }
    }
}
