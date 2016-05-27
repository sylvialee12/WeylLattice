function h = hamiltonian( rz,ry,rx,Omega1,Omega2,Omegad,nud,phi1,phi2 )
%HAMILTONIAN Summary of this function goes here
%   Detailed explanation goes here
%%%%-------------------Useful matrix----------------------%%%
sx=[0,1;1,0];
sy=[0,-1i;1i,0];
sz=[1,0;0,-1];
s0=eye(2);
r=transpose([rx,ry,rz]);
k1 = [1/2, sqrt(3)/2, 0]; k2 = [1/2, -sqrt(3)/2, 0]; k3 = [-1, 0, 0];
kz = [0, 0, 1];
hgrap=[0,Omega1*(1+exp(1i*(k2-k1)*r)+exp(1i*(k3-k1)*r));
    Omega1*(1+exp(-1i*(k2-k1)*r)+exp(-1i*(k3-k1)*r)),0];
hz=[0,Omega2*(1+exp(1i*2*kz*r));Omega2*(1+exp(-1i*2*kz*r)),0];
h0=[hgrap,hz;hz',hgrap'];

h2=2*Omegad^2/nud*sin(phi2-phi1)*sin(2*kz*r)*kron(s0,sz);
h=h2+h0;

end

