function [X,Y] = change_xy(x,y)
if abs(x(2)-x(1))<abs(y(2)-y(1))
    if (y(1)-y(2))>0
        if (x(3)-x(2))>0
            X=[x(2) x(3) x(4) x(1)];
            Y=[y(2) y(3) y(4) y(1)];
        elseif (x(3)-x(2))<0
            X=[x(3) x(2) x(1) x(4)];
            Y=[y(3) y(2) y(1) y(4)];
        end
    elseif (y(1)-y(2))<0
        if (x(3)-x(2))>0
            X=[x(1) x(4) x(3) x(2)];
            Y=[y(1) y(4) y(3) y(2)];
        elseif (x(3)-x(2))<0
            X=[x(4) x(1) x(2) x(3)];
            Y=[y(4) y(1) y(2) y(3)];
        end
    end
elseif abs(x(2)-x(1))>abs(y(2)-y(1))
    if (x(1)-x(2))>0
        if (y(3)-y(2))>0
            X=[x(2) x(1) x(4) x(3)];
            Y=[y(2) y(1) y(4) y(3)];
        elseif (y(3)-y(2))<0
            X=[x(3) x(4) x(1) x(2)];
            Y=[y(3) y(4) y(1) y(2)];
        end
    elseif (x(1)-x(2))<0
        if (y(3)-y(2))>0
            X=[x(1) x(2) x(3) x(4)];
            Y=[y(1) y(2) y(3) y(4)];
        elseif (y(3)-y(2))<0
            X=[x(4) x(3) x(2) x(1)];
            Y=[y(4) y(3) y(2) y(1)];
        end
    end
    
end

