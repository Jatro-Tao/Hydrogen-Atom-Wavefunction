function Print_H_Atom_Wavefunction(n,l,m)

if(l>=n)
    error('Wrong quantum number');
end

if(abs(m)>l)
    error('Wrong quantum number');
end

syms r Z a0 reff x theta phi
Radial_first=sqrt((sym(2)/sym(n))^3*(factorial(sym(n)-sym(l)-1)/(sym(2)*sym(n)*factorial(sym(n)+sym(l)))))*(sym(2)/sym(n))^l;
Radial_first=simplify(Radial_first);
Radial_second=(Z/a0)^(3/2);
Radial_third=(reff)^l;
Radial_fourth=exp(-Z*r/(n*a0));
Radial_fifth=laguerreL(n-l-1,2*l+1,2*reff/n);
Radial_third=expand(Radial_third*Radial_fifth);
Radial_third=subs(Radial_third,reff,Z*r/a0);
if(Radial_third==1)
    Radial=['R_{n=',num2str(n),',l=',num2str(l),'}(r)=',latex(Radial_first),latex(Radial_second),latex(Radial_fourth)];
else
    Radial=['R_{n=',num2str(n),',l=',num2str(l),'}(r)=',latex(Radial_first),latex(Radial_second),'{\left(',latex(Radial_third),'\right)}',latex(Radial_fourth)];
end
disp(Radial);

Angular_first=1i^(m+abs(m))*sqrt(((2*l+1)*factorial(sym(l)-sym(abs(m))))/(4*sym(pi)*factorial(sym(l)+sym(abs(m)))));
Angular_first=simplify(Angular_first);
Angular_second=(1-x^2)^(abs(m)/2)*diff(legendreP(l,x),abs(m));
Angular_second=expand(Angular_second);
Angular_second=subs(Angular_second,x,cos(theta));
Angular_second=simplify(Angular_second);
Angular_third=exp(1i*m*phi);
if(l==0)
    Angular=['Y_{l=',num2str(l),',m=',num2str(m),'}(\theta,\phi)=',latex(Angular_first)];
else
    if(m==0)
        Angular=['Y_{l=',num2str(l),',m=',num2str(m),'}(\theta,\phi)=',latex(Angular_first),'{\left(',latex(Angular_second),'\right)}'];
    else
       Angular=['Y_{l=',num2str(l),',m=',num2str(m),'}(\theta,\phi)=',latex(Angular_first),'{\left(',latex(Angular_second),'\right)}',latex(Angular_third)];
    end
end
disp(Angular)

end