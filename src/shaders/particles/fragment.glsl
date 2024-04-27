void main()
{
    // CREATE A BRIGHT SPOT IN THE CENTER OF THE PARTICLE
    vec2 uv = gl_PointCoord;
    float distanceToCenter = length(uv - 0.5);
    float alpha = 0.05 / distanceToCenter - 0.1;



    gl_FragColor = vec4(vec3(1.0), alpha);
    #include <tonemapping_fragment>
    #include <colorspace_fragment>
}