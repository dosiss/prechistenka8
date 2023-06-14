  uniform float time;
  uniform vec2 moveVec;

  out vec3 pos;

  void main() {
    vec3 newPosition = position;
    vec2 move = moveVec;
    float vel = pow(position.z, 5.0)*1.0;
    float vecM = pow(position.z, 5.0)*10.1;
    float t = time*0.3;
    newPosition.x += sin(t)*vel;
    newPosition.y += cos(t)*vel;

    newPosition.x -= move.x*pow(position.z+0.5, 5.0)*0.2;
    newPosition.y += move.y*pow(position.z+0.5, 5.0)*0.2;

    newPosition.z = -1.0;

    gl_Position = vec4(newPosition, 1.0);
    gl_PointSize = 3.0*position.z+1.0;

    pos = position;
  }