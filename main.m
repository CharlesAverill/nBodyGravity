% This is a program to simulate n-body gravity

axis equal;
grid off;
clear;

b = Body(1, 0, 0, 0, 0, 0, 0);

while 1
    clf;
    
    axis([0 10 0 10]);
    axis equal;
    
    drawBody(b);
    
    drawnow();
    
    pause(.025);
end