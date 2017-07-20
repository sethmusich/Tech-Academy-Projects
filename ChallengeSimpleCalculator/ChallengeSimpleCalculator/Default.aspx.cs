using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChallengeSimpleCalculator
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addButton_Click(object sender, EventArgs e)
        {
            
            int firstNumb = int.Parse(firstValueBox.Text);
            int secondNumb = int.Parse(secondValueBox.Text);
            int result = firstNumb + secondNumb;
            resultLabel.Text = result.ToString();
        }

        protected void subtractButton_Click(object sender, EventArgs e)
        {
            
            int firstNumb = int.Parse(firstValueBox.Text);
            int secondNumb = int.Parse(secondValueBox.Text);
            int result = firstNumb - secondNumb;
            resultLabel.Text = result.ToString();
        }

        protected void multiplyButton_Click(object sender, EventArgs e)
        {
            int firstNumb = int.Parse(firstValueBox.Text);
            int secondNumb = int.Parse(secondValueBox.Text);
            int result = firstNumb * secondNumb;
            resultLabel.Text = result.ToString();
        }

        protected void divideButton_Click(object sender, EventArgs e)
        {
            int firstNumb = int.Parse(firstValueBox.Text);
            int secondNumb = int.Parse(secondValueBox.Text);
            int result = firstNumb / secondNumb;
            resultLabel.Text = result.ToString();
        }


    }
} 