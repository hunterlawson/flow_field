class Field {
    float size;
    float zOff;
    PVector sampleArea;
    Field(PVector sampleArea, float size, int octaves, float falloff) {
        this.size = size;
        this.sampleArea = sampleArea;
        noiseDetail(octaves, falloff);
        zOff = 0;
    }

    PVector getVector(PVector location) {
        PVector returnVector = new PVector();
        float noiseValue = noise(sampleArea.x+location.x/size, sampleArea.y+location.y/size, zOff);
        float angle = map(noiseValue, 0, 1, -TWO_PI, TWO_PI);
        returnVector = PVector.fromAngle(angle);
        return returnVector;
    }

    float zNoise(PVector location) {
        return noise(sampleArea.x+location.x/size, sampleArea.y+location.y/size, zOff);
    }

    void updateZ(float update) {
        zOff += update;
    }
}