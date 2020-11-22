function SF=sig_spec(ft,t,dt,f)
for k=1:length(f)
    SF(k)=0;
    for m=1:length(t)
        SF(k)=SF(k)+ft(m).*exp(-1*1i*2*pi*f(k)*t(m))*dt;
    end
end
end
