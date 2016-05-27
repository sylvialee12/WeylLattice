clear;
Omega1=1;
Omega2=1;
Omegad=0.5;
nud=2;
phi1=pi;
phi2=pi/2;
rx=linspace(-1,1,100);
ry=linspace(-1,1,100);
ry=4*pi/(3*sqrt(3));
tem=linspace(-1,1,100);
for i=1:length(tem)
    tic
    parfor j=1:length(rx)
        h=hamiltonian( pi*tem(i),ry,rx(j),Omega1,Omega2,Omegad,nud,phi1,phi2 )
        energy(i,j,:)=eig(h);
    end
    toc
end

%%
[Rz,Rx]=meshgrid(tem,rx);
figure;
for i=1:4
surf(Rz,Rx,energy(:,:,i)')
shading interp
hold on
end
hold off

%%

%%%%-----------2D Plot----------------%%%%
rx=0;
ry=linspace(-1,1,100);
ry=4*pi/(3*sqrt(3));