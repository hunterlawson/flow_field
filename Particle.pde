class Particle {
    boolean dead;
    float alpha;
    PVector location;
    
    Particle(PVector location) {
        this.location = location;
        dead = false;
        alpha = 10;
    }

    void update() {
        fill(0, 5);
        noStroke();
        ellipse(location.x, location.y, 2, 2);
        location.add(flowField.getVector(location).mult(2));
        alpha -= 0.1;
        if(location.x > width) {
            location.x = 0;
        }
        if(location.x < 0) {
            location.x = width;
        }
        if(location.y > height) {
            location.y = 0;
        }
        if(location.y < 0) {
            location.y = height;
        }
    }
}
