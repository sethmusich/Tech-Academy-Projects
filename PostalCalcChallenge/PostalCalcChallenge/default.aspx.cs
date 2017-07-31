using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PostalCalcChallenge
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void handleChange(object sender, EventArgs e)
        {
            // do the values in the textboxes exist
            if (!valuesExist()) return;

            // what is the volume?
            int volume = 0;
            if (!tryGetVolume(out volume)) return;

            // what is the mult
            double postageMultiplier = getPostageMultiplier();

            // what is the cost (vol x mult.)
            double cost = postageMultiplier * volume;

            //show the user 
            resultLabel.Text = String.Format("Your total cost is {0:C} to ship", cost);

        }

        private bool valuesExist()
        {
            if (!airButton.Checked
                && !groundButton.Checked
                && !nextDayButton.Checked)
                return false;

            if (widthBox.Text.Trim().Length == 0
                || heightBox.Text.Trim().Length == 0)
                return false;

            return true;
        }

        private bool tryGetVolume(out int volume)
        {
            volume = 0;
            int width = 0;
            int height = 0;
            int length = 0;

            if (!int.TryParse(widthBox.Text.Trim(), out width))
                return false;
            if (!int.TryParse(heightBox.Text.Trim(), out height))
                return false;
            if (!int.TryParse(lengthBox.Text.Trim(), out length))
                length = 1;

            volume = length * width * height;

            return true;    
        }

        private double getPostageMultiplier()
        {
            if (groundButton.Checked) return .15;
            else if (airButton.Checked) return .25;
            else if (nextDayButton.Checked) return .45;
            else return 0;
              
        }


    }
}