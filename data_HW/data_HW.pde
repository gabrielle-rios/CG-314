//Gabrielle Rios

/*Uses CSV data*/

//Voter turnout in President Election per Year
int [] voters;//percentage of population that voted
//int [] years;//start 1980, end 1996

void setup() {
  size(480, 400);
  Table stats = loadTable("hw_values.csv", "header");//ignores first row using header
  voters = new int [stats.getRowCount() - 2];
  years = new int [stats.getRowCount() - 2];
  for (int i = 0; i < stats.getRowCount() - 2; i++) {
    voters[i] = stats.getInt(i, 4);
  }
}

void draw() {
  background(150);
  stroke(255, 0, 0);
  noFill();

  beginShape();
  for (int i = 0; i < voters.length; i++) {
    float x = map(i, 0, voters.length, 20, 460);
    float y = map(voters[i], 0, 60, 100, 20);
    stroke(100);
    line(x, 0, x, height);
    stroke(255, 0, 0);
    vertex(x, y);
  }
    endShape();
  }