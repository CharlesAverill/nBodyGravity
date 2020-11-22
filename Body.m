classdef Body < handle
    properties
        mass {mustBeNumeric}
        
        xPos {mustBeNumeric}
        yPos {mustBeNumeric}
        
        xVel {mustBeNumeric}
        yVel {mustBeNumeric}
        
        xAcc {mustBeNumeric}
        yAcc {mustBeNumeric}
    end
    methods
        function this = Body(m, x, y, xV, yV, xA, yA)
            this.mass = m;
            this.xPos = x;
            this.yPos = y;
            this.xVel = xV;
            this.yVel = yV;
            this.xAcc = xA;
            this.yAcc = yA;
        end
        
        function c = drawBody(body)
            radius = log(exp(1) + body.mass / 10);
            
            scale_green = dec2hex(bitshift(round((255 / (1 + body.mass / 100000))), 8));
            scale_blue = dec2hex(round(255 / (1 + body.mass / 10000)));
            color = "#" + dec2hex(16711680 + scale_green + scale_blue);
            disp(scale_green + " " + scale_blue);
            
            pos = [body.xPos, body.yPos, body.xPos + radius, body.yPos + radius];
            
            c = rectangle("Position", pos, "Curvature", [1 1], 'FaceColor', color, 'LineWidth', 1);
        end
    end
end