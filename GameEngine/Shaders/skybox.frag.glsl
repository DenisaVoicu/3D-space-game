#version 400 core

out vec4 fragColor;

in vec3 TextCoords;

uniform samplerCube skybox;

void main()
{

fragColor=texture(skybox,TextCoords)

}

