FlowField flowfield;
ArrayList<Particle> particles;

boolean debug = false;

void setup() {
  size(1200, 600);
  
  flowfield = new FlowField(10);
  flowfield.update();

  particles = new ArrayList<Particle>();
  for (int i = 0; i < 10000; i++) {
    PVector start = new PVector(random(width), random(height));
    particles.add(new Particle(start, random(2, 8)));
  }
  background(0);
}

void draw() {
  flowfield.update();
  //background(0);
  
  for (Particle p : particles) {
    p.follow(flowfield);
    p.run();
  }
  
}
