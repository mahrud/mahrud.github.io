var x_0 = 300;
var y_0 = 200;
var y_1 = 395;

var n = 5;
var r = 1;
var t = 0;
var dt = 0.01;

function setup() {
  createCanvas(600, 400);
  background(255);
}

function P(r, w=1, p=0) {
  return createVector(cos(w * t - p) * r, sin(w * t - p) * r);
}

function draw() {
	if (t < TWO_PI * n) {
    t += dt;

    u = P(100,1);
    v = P(0.1).mult(P(500, 10).x);
    w = P(10,20);

    u.add(v).add(w).rotate(HALF_PI);

    fill(0);
    ellipse(x_0 + u.x, y_0 + u.y, r, r);
    ellipse(600*t/n/TWO_PI, y_1 - u.mag()/5, r, r);
  }
}
