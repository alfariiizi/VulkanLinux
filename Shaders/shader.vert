#version 450

vec2 position[] = {
    { -0.5f, -0.5f },
    { 0.5f, -0.5f },
    { 0.0f, 0.5f }
};

vec3 colors[] = {
    { 1.0f, 0.0f, 0.0f },
    { 0.0f, 1.0f, 0.0f },
    { 0.0f, 0.0f, 1.0f }
};

layout (location = 0) out vec3 fragColor;

void main()
{
    gl_Position = vec4( position[gl_VertexIndex], 0.0f, 1.0f );
    fragColor = colors[gl_VertexIndex];
}