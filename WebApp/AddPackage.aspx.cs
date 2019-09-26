using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApp
{
    public partial class AddPackage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Cts_Package _package = new Cts_Package
            {
                pk_Package_weight = double.Parse(txtPackageWeight.Text),
                pk_Sender_address = txtSenderAddress.Text,
                pk_Receiver_address = txtReceiverAddress.Text,
                pk_package_type = ddlPackageType.Text,
                pk_Customer_id = int.Parse(Session["umId"].ToString())
            };
            if (BAL.UserOperations.AddPackage(_package))
            {
                string _msg = string.Format("SuccessFunction('{0}')", "Package Added Successfully");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);
            }
            else
            {
                string _msg = string.Format("SuccessFunction('{0}')", "Package Cannot Be Added ");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);
            }            
        }
    }
}