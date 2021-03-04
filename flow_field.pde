ArrayList<Particle> particles = new ArrayList<Particle>();
Field flowField;
int particleCount = 10000;
color backgroundColor = color(255);
void setup() {
    size(1200, 800);
    frameRate(60);
    background(backgroundColor);
    flowField = new Field(new PVector(0, 0), 100, 8, .3);
    for(int i=0;i<particleCount;i++) {
        particles.add(new Particle(new PVector(random(width), random(height))));
    }  
}

void draw() {
    for(Particle p : particles) {
        p.update();
    }
    flowField.updateZ(0.01);
}

void mousePressed() {
    background(backgroundColor);
    noiseSeed(int(random(100000)));
    for(Particle p : particles) {
        p.location = new PVector(random(width), random(height));
    }
}