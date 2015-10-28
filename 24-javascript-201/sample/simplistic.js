/*
  The point of abstraction in software development is to 
  take a complex operation, and provide a simple interface
  in which to execute it.

  Looking at the code below, it's easy to see where you
  can start creating abstractions because the code is
  obviously duplicated in places.
 */

var allScores = [];
var studentA = {}, score;
var ATestScores = [78,100,75,89,88,100,92,75,95];

for (var i = 0; i < ATestScores.length; i++) {
  allScores.push(ATestScores[i]);
}


var studentB = {};
var BTestScores = [98,66,68,93,75,82,59,77,89,71];

for (var i = 0; i < BTestScores.length; i++) {
  allScores.push(BTestScores[i]);
}


var studentC = {};
var CTestScores = [81,67,98,71,88,88,82,92,79,69];

for (var i = 0; i < CTestScores.length; i++) {
  allScores.push(CTestScores[i]);
}

var meanScore = allScores.reduce(function(prev, curr) {
  return prev + curr;
}) / allScores.length;


/*
  We can create an object that abstracts the operation of
  calculating a mean score away from any developer who needs
  to do it by providing a few methods.
 */
 
/*
function MeanScore() {
  this.scoreBucket = [];
}

MeanScore.prototype.addScore = function(scoreArray) {
  this.scoreBucket = this.scoreBucket.concat(scoreArray);
};

MeanScore.prototype.getMean = function() {
  var meanScore = Math.round(this.scoreBucket.reduce(function(prev, curr) {
    return prev + curr;
  }) / this.scoreBucket.length);

  return meanScore;
};

var meanCalculator = new MeanScore();

var ATestScores = [78,100,75,89,88,100,92,75,95];
meanCalculator.addScore(ATestScores);

var BTestScores = [98,66,68,93,75,82,59,77,89,71];
meanCalculator.addScore(BTestScores);

var CTestScores = [81,67,98,71,88,88,82,92,79,69];
meanCalculator.addScore(CTestScores);

console.log("meanScore",meanCalculator.getMean());
*/