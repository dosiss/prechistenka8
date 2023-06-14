  uniform float time;

  in vec3 pos;

  vec3 color = vec3(0.3, 0.1, 0.1);

  void main() {
    gl_FragColor = vec4(color, 0.6);
  }