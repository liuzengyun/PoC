function[out]=sigexpand(d,M)
N=length(d);
out=zeros(M,N);
out(1,:)=d;
out=reshape(out,1,M*N);