using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChallengeFirstPapaBobsWebsite
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)

        {

            double total;

            if (smallButton.Checked)
                total = 10.00;
            else if (mediumButton.Checked)
                total = 13.00;
            else
                total = 16.00;


            if (deepDishButton.Checked)
                total += 2.0;



            total = (pepBox.Checked) ? total + 1.5 : total;
            total = (onionsBox.Checked) ? total + .75 : total;
            total = (gpeppersBox.Checked) ? total + .50 : total;
            total = (rpeppersBox.Checked) ? total + .75 : total;
            total = (anchoviesBox.Checked) ? total + 2 : total;

            if (pepBox.Checked && gpeppersBox.Checked && anchoviesBox.Checked || pepBox.Checked && rpeppersBox.Checked && onionsBox.Checked)
            {
                total = total - 2;
            }

            totalLabel.Text = total.ToString();





        }

         

    }
}