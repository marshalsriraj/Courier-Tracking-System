using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class UserFunctions
    {
        public static bool AddPackage(Cts_Package _package)
        {
            try
            {
                using (DBContextDataContext db = new DBContextDataContext())
                {
                    db.Cts_Packages.InsertOnSubmit(_package);
                    db.SubmitChanges();
                    if (_package.pk_consignment_id > 0)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
            }
            catch(Exception Ex)
            {
                return false;
            }
        }

        public static List<Cts_Package> GetPackageId()
        {
            try
            {
                using (DBContextDataContext db = new DBContextDataContext())
                {
                    return db.Cts_Packages.Where(x => x.pk_isActive == null).ToList();
                }
            }
            catch (Exception ex)
            {
                return new List<Cts_Package>();
            }
        }

        public static bool ApprovePackage(int pk_id, bool status)
        {
            using (DBContextDataContext db = new DBContextDataContext())
            {
                try
                {
                    var user = db.Cts_Packages.Where(x => x.pk_consignment_id == pk_id).FirstOrDefault();
                    user.pk_isActive = status;
                    db.SubmitChanges();
                    return true;
                }
                catch
                {
                    return false;
                }
            }
        }
    }
}
