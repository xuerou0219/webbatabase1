using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CBF110049_NextButton0_Click(object sender, EventArgs e)
    {
        
    }

    protected void CBF110049_DDL1_SelectedIndexChanged(object sender, EventArgs e)
    {
        CBF110049_cambridge.Text = string.Format($"{CBF110049_DDL1.SelectedValue}=>{CBF110049_GV1.DataSource}");
    }

    protected void CBF110049_testBtn0_Click(object sender, EventArgs e)
    {
        CBF110049_MV1.ActiveViewIndex = 0;
        CBF110049_MV1.ActiveViewIndex = 1;
    }
}