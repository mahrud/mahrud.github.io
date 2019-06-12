var x_0 = 300;
var y_0 = 200;

var n = 1;
var dt = 0.3;
var ds = 10;

function setup() {
  createCanvas(x_0*2, y_0*2);
}

function Z(r, t) {
  return createVector(
    cos(t) * r,
    sin(t) * r);
}

function X(z1, z2, xi = createVector(0, 0)) {
  return createVector(
    z1.x * z2.x - z1.y * z2.y,
    z1.x * z2.y + z1.y * z2.x
  ).add(xi.mult(z1.y * z2.y));
}

function draw() {
  background(255);
  var xi = createVector(0,0);

  for (let r = 0; r <= n * ds; r += ds) {
    for (let t = 0; t <= TWO_PI; t += dt) {
      var z1 = Z(r, t);

      for (let x = -n; x <= n; x++) {
        for (let y = -n; y <= n; y++) {
          var z2 = createVector(x,y).mult(10);

          var cm = X(z1, z2);

          if (mouseX < 0 || mouseY < 0 || mouseX > 2 * x_0 || mouseY > 2 * y_0) {
            xi = createVector(0,0);
          } else {
            xi = createVector(mouseX - x_0, mouseY - y_0);
	  }
          var nm = X(z1, z2, xi).mult(0.01);
          line(x_0 + cm.x, y_0 + cm.y, x_0 + nm.x, y_0 + nm.y);
        }
      }
    }
  }
}
