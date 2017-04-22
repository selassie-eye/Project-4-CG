#version 120


attribute  vec4 VertexPosition;
attribute  vec3 VertexNormal;

varying vec3 ReflectDir;
varying vec3 vs_fs_normal;
varying vec3 vs_fs_position;

uniform vec3 cameraPos;

void main(){
	vs_fs_position = normalize(cameraPos - vec3(VertexPosition));
	vs_fs_normal = VertexNormal;
	ReflectDir = reflect(vs_fs_position, normalize(VertexNormal));
}
