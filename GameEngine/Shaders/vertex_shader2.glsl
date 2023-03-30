#version 400

layout (location = 0) in vec3 pos;
layout (location = 1) in vec3 normals;
layout (location = 2) in vec2 texCoord;

out vec2 textureCoord;
out vec3 norm;
out vec3 fragPos;

uniform mat4 MVP;
uniform mat4 model;

void main()
{
	vec3 posCopy=pos;
	posCopy.y+=2*2*pow((sin(dot(vec2(2,5),vec2(posCopy.x,posCopy.z))*13)+1)/2,2);
	textureCoord = texCoord;
	fragPos = vec3(model * vec4(posCopy, 1.0f));
	norm = mat3(transpose(inverse(model)))*normals;
	gl_Position = MVP * vec4(posCopy, 1.0f);
}