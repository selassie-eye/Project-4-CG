#version 120

varying vec3 ReflectDir;


uniform samplerCube CubeMapTex;


void main() {
	vec4 reflectColor = textureCube(CubeMapTex, ReflectDir);
	gl_FragColor = mix(gl_FragColor, reflectColor, .6);
}
