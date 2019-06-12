var x_0 = 300;
var y_0 = 200;

var n = 5;
var r = 1;
var t = 0;
var dt = 0.01;

function setup() {
  createCanvas(600, 400);
}

function C(t, r) {
  return createVector(cos(t) * r, sin(t) * r);
}

function draw() {
  if (t < TWO_PI * n) {
    t += dt;

    u = C(t, 100);
    v = C(t, 50 * cos(5 * t) * sin(101 * t));
    w = createVector(0, 0); // C(t*t, 50);

    u.add(v).add(w);

    fill(0);
    ellipse(x_0 + u.x, y_0 + u.y, r, r);
  }
}
