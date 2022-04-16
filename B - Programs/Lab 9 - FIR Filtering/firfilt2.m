function yy = firfilt2(ww,yy,r, M)
%FIRFILT   FIR filter 2 (Restoration Filter) implemented as a difference equation
%
%   usage:   yy = firfilt2(ww,yy,r,M) 
%
%    implements the FIR filter difference equation:
%
%                   M
%                   __
%                   \
%           y[n]=   /  r^l * w[n-l]
%                   --
%                   l=0
%

for n=1:length(yy)
    for l=0:M
        if (n-1)>=l
            yy(n)=r^l*ww(n-l)+yy(n);
        end
    end
end
yy=yy';