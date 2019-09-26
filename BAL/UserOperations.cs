using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BAL
{
   public class UserOperations
    {
        public static bool AddPackage(Cts_Package _package)
        {
            return DAL.UserFunctions.AddPackage(_package);
        }

        public static List<Cts_Package> GetPackageId()
        {
            return DAL.UserFunctions.GetPackageId();
        }

        public static bool ApprovePackage(int pk_id, bool status, int role, string empId, int cost)
        {
            return DAL.UserFunctions.ApprovePackage(pk_id, status, role, empId, cost);
        }
    }
}
