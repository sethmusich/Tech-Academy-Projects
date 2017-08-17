using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace rateCalculator
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            resultLabel.Text = "";
            double rate;

            //if statement to calculate through every option
            //typically, I would would iterate through options either with a seperate classes for each 
            //or a for loop but this is a small app with 12, non-expandable options. 

            if (goldButton.Checked && EE.Checked)
                rate = 14.02;

            else if (goldButton.Checked && EESpouse.Checked)
                rate = 24.12;

            else if (goldButton.Checked && EEChildren.Checked)
                rate = 29.17;
            else if (goldButton.Checked && EEFamily.Checked)
                rate = 30.56;
    
            else if (silverButton.Checked && EE.Checked)
                rate = 12.26;

            else if (silverButton.Checked && EESpouse.Checked)
                rate = 23.43;

            else if (silverButton.Checked && EEChildren.Checked)
                rate = 24.92;
            else if (silverButton.Checked && EEFamily.Checked)
                rate = 29.02;

            else if (bronzeButton.Checked && EE.Checked)
                rate = 9.6;

            else if (bronzeButton.Checked && EESpouse.Checked)
                rate = 19.32;

            else if (bronzeButton.Checked && EEChildren.Checked)
                rate = 20.12;
            else rate = 25.16;



            //exception handler to catch non-numeric entries

            int frequency = 0;
            bool isNumber = false;

            isNumber = int.TryParse(freqBox.Text, out frequency);

            if (!isNumber)
            {
                resultLabel.Text += "Please use a numeric value.";
            }
            else
            {
                frequency = int.Parse(freqBox.Text);
            }

            //calculating yearly and monthly cost, and converting montly rate from double to int

      
            double yearRate = rate * 12;
            double cost = frequency * rate;

           

            //print result

            resultLabel.Text = String.Format("Your cost is: <br> {0:C2} per month <br>{1:C2} per year <br>{2:C2} for the selected amount of months", rate, yearRate, cost);


        }
    }
}