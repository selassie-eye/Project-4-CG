#version 120

varying vec3 ReflectDir;
varying vec3 vs_fs_normal;
varying vec3 vs_fs_position;

uniform samplerCube CubeMapTex;
uniform vec3 cameraPos;

void main() {
	gl_FragColor = textureCube(CubeMapTex, vs_fs_position);
}
