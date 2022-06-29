function tx=rk4(f,tt,x0)
    n=length(tt);
    tx(1)=x0;
    for i=2:n
        h=tt(i)-tt(i-1);
        k1=h*f(tt(i-1),tx(i-1));
        k2=h*f(tt(i-1)+h/2,tx(i-1)+k1/2);
        k3=h*f(tt(i-1)+h/2,tx(i-1)+k2/2);
        k4=h*f(tt(i-1)+h,tx(i-1)+k3);
        tx(i)=tx(i-1)+(1/6)*(k1+2*k2+2*k3+k4);
    end
end
#edison nilver mestas hancco
