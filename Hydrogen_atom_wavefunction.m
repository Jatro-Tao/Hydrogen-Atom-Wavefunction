function Hydrogen_atom_wavefunction(n,l,m)
%计算氢原子波函数

%径向部分
syms r
Radial=sqrt((sym(2)/sym(n))^3*(factorial(sym(n)-sym(l)-1)/(sym(2)*sym(n)*factorial(sym(n)+sym(l)))))*exp(-r/n)*(2*r/sym(n))^l*laguerreL(sym(n)-sym(l)-1,2*l+1,2*r/n);
r_max=Find(n,n^2,n^2,1,Radial);
r_max=ceil(r_max);
R=0:r_max/max(100,40*n):r_max;
Psi_Radial=double(subs(Radial,r,R));
subplot('Position',[0.05,0.55,0.4,0.4]);
plot(R,Psi_Radial,'LineWidth',1)
xlim([0,r_max])
ylim([min(0,1.1*double(min(Psi_Radial))),1.1*double(max(Psi_Radial))])
xlabel('$r/a_0$','interpreter','latex','FontSize',12);
ylabel(['$R_{',num2str(n),num2str(l),'}(r)$'],'interpreter','latex','FontSize',12);
title(['Radial Function: ','$R_{',num2str(n),num2str(l),'}(r)=',latex(Radial),'$'],'interpreter','latex','FontSize',16)
subplot('Position',[0.05,0.05,0.4,0.4]);
Psi_Radial_Dis=R.^2.*Psi_Radial.^2;
plot(R,Psi_Radial_Dis,'LineWidth',1);
xlim([0,r_max])
ylim([0,1.1*double(max(Psi_Radial_Dis))])
xlabel('$r/a_0$','interpreter','latex','FontSize',12);
ylabel(['$r^2{R_{',num2str(n),num2str(l),'}}^2(r)$'],'interpreter','latex','FontSize',12);
title('Radial Distribution Function','interpreter','latex','FontSize',16)

%角度部分
syms x theta phi
ALgd=(1-x^2)^(abs(m)/2)*diff(legendreP(l,x),abs(m));
Polar=1i^(m+abs(m))*sqrt(((2*l+1)*factorial(l-abs(m)))/(4*sym(pi)*factorial(l+abs(m))))*ALgd;
Azimuth=exp(1i*m*phi);
Angular=subs(Polar*Azimuth,x,cos(theta));

%绘制球谐函数
dx=pi/(30*l+30);
[phi,theta] = meshgrid(0:dx:2*pi,0:dx:pi);
Plm = legendre(l,cos(theta));
if l~=0
    Plm = reshape(Plm(abs(m)+1,:,:),size(phi));
end
Ylm = 1i^(m+abs(m))*sqrt(((2*l+1)*factorial(l-abs(m)))/(4*pi*factorial(l+abs(m)))) .*Plm .*exp(1i*m*phi);
[Xm,Ym,Zm] = sph2cart(phi, pi/2-theta, abs(real(Ylm)));
subplot('Position',[0.5,0.55,0.2,0.35]);
surf(Xm,Ym,Zm)
shading interp
title(['Spherical harmonic:',newline,'$Y_{',num2str(l),num2str(abs(m)),'}(\theta,\phi)=',latex(Angular),'$'],'interpreter','latex','FontSize',16)
axis equal;

%绘制波函数
Theta=0:dx:2*pi;
Psi_Polar=double(subs(Polar,x,cos(Theta)));
Psi=(ones(size(Theta,2),1)*Psi_Radial).*transpose(ones(size(R,2),1)*Psi_Polar);
[Radius,Theta]=meshgrid(R,0:dx:2*pi);
[X,Y]=pol2cart(Theta,Radius);
subplot('Position',[0.75,0.55,0.2,0.35])
mesh(X,Y,Psi)
title(['Wavefunction: ','$\Psi_{',num2str(n),num2str(l),num2str(m),'}(r,\theta,\phi=0)$'],'interpreter','latex','FontSize',16)

%绘制概率热图
axp=subplot('Position',[0.5,0.05,0.45,0.4]);
surf(X,Y,Psi.^2)
colormap(axp,inferno);
title(['${\Psi_{',num2str(n),num2str(l),num2str(m),'}(r,\theta,\phi=0)}^2$'],'interpreter','latex','FontSize',16)
axis equal
axis off
shading interp
view(0,90)

end

function r_max=Find(n,start,step,forward,Function)
syms r;
r_max=start;
if(forward==1)
    while (abs(subs(Function,r,r_max)-subs(Function,r,r_max+1))>min(1e-3,10^(-n/2))) || (abs(subs(Function,r,r_max))>min(1e-3,10^(-n/2)))
        r_max=r_max+step;
    end
else
    while (abs(subs(Function,r,r_max)-subs(Function,r,r_max+1))<min(1e-3,10^(-n/2))) && (abs(subs(Function,r,r_max))<min(1e-3,10^(-n/2)))
        if(r_max>step)
            r_max=r_max-step;
        else
            break;
        end
    end
end
if(step>10)
    r_max=Find(n,r_max,step/2,-forward,Function);
end
end