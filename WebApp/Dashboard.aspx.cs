using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class Dashboard : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) GetData();
        }

        public void GetData()
        {
            List<DAL.Cts_Package> Packages = BAL.AdminOperations.GetAllPackageDetails();
            if(Packages.Count>0)
            {
                lblTotal.Text = Packages.Count.ToString();
                lblAccepted.Text = Packages.Where(x => x.pk_isActive == true).Count().ToString();
                lblRejected.Text = Packages.Where(x => x.pk_isActive == false).Count().ToString();
                lblPending.Text = Packages.Where(x => x.pk_isActive == null).Count().ToString();
            }
        }
    }
}
