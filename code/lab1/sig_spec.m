function sf=sig_spec(st, t, dt, f)
    for m=1:length(f)
        sf(m)=0;
        for k=1:length(t)
            sf(m)=sf(m)+st(k).*exp(-1i*2*pi*f(m)*t(k));
        end
        sf(m)=sf(m)* dt;
    end