﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Darts;

namespace SimpleDarts
{
    public class Score
    {
        public static void ScoreDart(Player player, Dart dart)
        {
            int score = 0;

            if (dart.IsTriple) score = dart.Score * 3;
            else if (dart.IsTriple) score = dart.Score * 3;
            else score = dart.Score;

            if (dart.IsTriple && dart.Score == 0) score = 50;
            else if (dart.Score == 0) score = 25;

            player.Score += score;
        }
    }
}