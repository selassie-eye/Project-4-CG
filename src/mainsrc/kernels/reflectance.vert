#version 120
attribute  vec3 VertexPosition;
attribute  vec3 VertexNormal;

varying vec3 ReflectDir;

uniform vec3 cameraPos;

void main()
{
	vec3 normal = normalize(VertexNormal);
	vec3 view = normalize(VertexPosition - cameraPos);
	
	ReflectDir = reflect(view, normal);
	
}
