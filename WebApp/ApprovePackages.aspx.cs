using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class ApprovePackages : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) LoadData();
        }

        public void LoadData()
        {
            List<Cts_Package> package = BAL.UserOperations.GetPackageId();            
            gdvApprovalData.DataSource = package;
            gdvApprovalData.DataBind();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DropDownList ddl = (e.Row.FindControl("ddlLocation") as DropDownList);
                List<Cts_BranchMaster> warehouses = BAL.AdminOperations.GetWarehouse();
                ddl.DataSource = warehouses;
                ddl.DataTextField = "bm_branchName";
                ddl.DataValueField = "bm_branchName";
                ddl.DataBind();
                ddl.Items.Insert(0, new ListItem("--Select Location--", "0"));
            }            
        }

        protected void gdvApprovalData_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            GridViewRow row = gdvApprovalData.Rows[int.Parse(e.CommandArgument.ToString())];
            int pk_id = int.Parse((row.FindControl("lblcnsngId") as Label).Text);
            int role = int.Parse(Session["RoleID"].ToString());
            string empId = Session["EmpId"].ToString();
            int cost = int.Parse((row.FindControl("txtPkCost") as TextBox).Text);
            string cLocation;
            if (int.Parse(Session["RoleID"].ToString()) == 3)
            {
                cLocation = (row.FindControl("ddlLocation") as DropDownList).Text;
            }
            else
            {
                cLocation = "";
            }                

            if (e.CommandName == "approve")
            {
                if (BAL.UserOperations.ApprovePackage(pk_id, true, role, empId, cost, cLocation))
                {
                    string _msg = string.Format("SuccessFunction('{0}')", "Package Approved Successfully");
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);

                }
                else
                {
                    string _msg = string.Format("SuccessFunction('{0}')", "Package Rejected");
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);
                }
            }
            else if (e.CommandName == "reject")
            {
                if (BAL.UserOperations.ApprovePackage(pk_id, false, role, empId, cost, cLocation))
                {
                    string _msg = string.Format("SuccessFunction('{0}')", "Package Rejected");
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);
                }
                else
                {
                    string _msg = string.Format("SuccessFunction('{0}')", "Package Approved Successfully");
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);
                }
            }
            LoadData();
        }        
    }
}