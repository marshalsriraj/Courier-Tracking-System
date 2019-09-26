using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BAL
{
    public class AdminOperations
    {
        public static List<Cts_User_Master> GetPendingList()
        {
            return DAL.AdminOperations.GetPendingList();
        }

        public static bool ApprovalUsers(int um_id, bool status, string empId, string name, long salary)
        {
            return DAL.AdminOperations.ApproveUsers(um_id, status, empId, name, salary);
        }

        public static List<Cts_BranchMaster> GetWarehouse()
        {
            return DAL.AdminOperations.GetWarehouse();
        }
    }
}
