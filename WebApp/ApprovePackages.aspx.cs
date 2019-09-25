﻿using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class ApprovePackages : System.Web.UI.Page
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

        protected void gdvApprovalData_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            GridViewRow row = gdvApprovalData.Rows[int.Parse(e.CommandArgument.ToString())];
            int pk_id = int.Parse((row.FindControl("lblcnsngId") as Label).Text);

            if (e.CommandName == "approve")
            {
                if (BAL.UserOperations.ApprovePackage(pk_id, true))
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
                if (BAL.UserOperations.ApprovePackage(pk_id, false))
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