using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SteelProject
{
    public partial class SteelMapAndImg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Upload_Click(object sender, EventArgs e)
        {
            if (imgUpload.HasFile)
            {
                
                imgUpload.SaveAs(MapPath("/Images/" + imgUpload.FileName));
                shownUpImg.ImageUrl = "/Images/" + imgUpload.FileName;
            }
        }

    }
}