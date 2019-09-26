using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class AdminOperations
    {
        public static List<Cts_User_Master> GetPendingList()
        {
            using (DBContextDataContext db =new DBContextDataContext())
            {
               return db.Cts_User_Masters.Where(x => x.um_isActive == null).ToList();
            }
        }

        public static bool ApproveUsers(int um_id, bool status, string empId, string name, long salary)
        {
            using (DBContextDataContext db = new DBContextDataContext())
            {
                try
                {
                    var user = db.Cts_User_Masters.Where(x => x.um_id == um_id).FirstOrDefault();
                    user.um_isActive = status;
                    user.um_IsApprovedOn = DateTime.Now.Date;
                    user.um_IsApprovedBy = name;
                    user.um_Salary = salary;
                    db.SubmitChanges();
                    return true;
                }
                catch
                {
                    return false;
                }
            }
        }

        public static List<Cts_BranchMaster> GetWarehouse()
        {
            using (DBContextDataContext db = new DBContextDataContext())
            {
                return db.Cts_BranchMasters.Where(x => x.bm_branchName != null).ToList();
            }
        }
    }
}
