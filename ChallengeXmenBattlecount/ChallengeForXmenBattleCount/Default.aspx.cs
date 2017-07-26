using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChallengeForXmenBattleCount
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Wolverine fewest battles
            // Pheonix most battles

            string[] names = new string[] { "Professor X", "Iceman", "Angel", "Beast", "Pheonix", "Cyclops", "Wolverine", "Nightcrawler", "Storm", "Colossus" };
            int[] numbers = new int[] { 7, 9, 12, 15, 17, 13, 2, 6, 8, 13 };

            string result = "";

            int smallNum = 0;
            int largeNum = 0; 

            for (int i = 0; i <names.Length; i++)
            {
                if (numbers[i] > numbers[largeNum])
                {
                    largeNum = i;
                }
                else if (numbers[i] < numbers[smallNum])
                {
                    smallNum = i;
                }
            }

            result = String.Format("Most battles belong to: {0} (Value: {1})", names[largeNum], numbers[largeNum]);
            result += String.Format("<br />Least battles belong to: {0} (Value: {1}", names[smallNum], numbers[smallNum]);

            resultLabel.Text = result;
        }
    }
}