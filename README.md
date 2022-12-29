# Hydrogen-Atom-Wavefunction
## Function  
This is a MATLAB function to:  
- Calculate hydrogen(-like) atom Wavefunction $\varphi_{nlm}(r,\theta,\phi)$ and print it in LaTex  
- Plot radial part of wavefunction $R_{nl}(r)$ and radial distribution function $r^2{R_{nl}(r)}^2$  
- Show 3-dimension image of spherical harmonics $Y_{lm}(\theta,\phi)$ 
- Show 3-dimension image of hydrogen atom wavefunction
## Example
- Input=`2,1,0`  
Output=`R_{n=2,l=1}(r)=\frac{\sqrt{6}}{12}{\left(\frac{Z}{a_{0}}\right)}^{3/2}{\left(\frac{Zr}{a_{0}}\right)}{\mathrm{e}}^{-\frac{Z\ r}{2\ a_{0}}}`  
`Y_{l=1,m=0}(\theta,\phi)=\frac{\sqrt{3}}{2\ \sqrt{\pi }}\cos\left(\theta \right)`  
$R_{n=2,l=1}(r)=\frac{\sqrt{6}}{12}{\left(\frac{Z}{a_{0}}\right)}^{3/2}{\left(\frac{Zr}{a_{0}}\right)}{\mathrm{e}}^{-\frac{Z\ r}{2\ a_{0}}}$  
$Y_{l=1,m=0}(\theta,\phi)=\frac{\sqrt{3}}{2\ \sqrt{\pi }}\cos\left(\theta \right)$  
- Input=`10,4,2`  
Output=`R_{n=10,l=4}(r)=\frac{\sqrt{715}}{22522500000}{\left(\frac{Z}{a_{0}}\right)}^{3/2}{\left(\frac{2002\ Z^4\ r^4}{{a_{0}}^4}-\frac{1001\ Z^5\ r^5}{5\ {a_{0}}^5}+\frac{182\ Z^6\ r^6}{25\ {a_{0}}^6}-\frac{91\ Z^7\ r^7}{750\ {a_{0}}^7}+\frac{7\ Z^8\ r^8}{7500\ {a_{0}}^8}-\frac{Z^9\ r^9}{375000\ {a_{0}}^9}\right)}{\mathrm{e}}^{-\frac{Z\ r}{10\ a_{0}}}`  
`Y_{l=4,m=2}(\theta,\phi)=-\frac{\sqrt{10}}{40\ \sqrt{\pi }}{\left(\frac{105\ {\cos\left(\theta \right)}^4}{2}-60\ {\cos\left(\theta \right)}^2+\frac{15}{2}\right)}{\mathrm{e}}^{\phi \ 2{}\mathrm{i}}`  
$R_{n=10,l=4}(r)=\frac{\sqrt{715}}{22522500000}{\left(\frac{Z}{a_{0}}\right)}^{3/2}{\left(\frac{2002\ Z^4\ r^4}{{a_{0}}^4}-\frac{1001\ Z^5\ r^5}{5\ {a_{0}}^5}+\frac{182\ Z^6\ r^6}{25\ {a_{0}}^6}-\frac{91\ Z^7\ r^7}{750\ {a_{0}}^7}+\frac{7\ Z^8\ r^8}{7500\ {a_{0}}^8}-\frac{Z^9\ r^9}{375000\ {a_{0}}^9}\right)}{\mathrm{e}}^{-\frac{Z\ r}{10\ a_{0}}}$  
$Y_{l=4,m=2}(\theta,\phi)=-\frac{\sqrt{10}}{40\ \sqrt{\pi }}{\left(\frac{105\ {\cos\left(\theta \right)}^4}{2}-60\ {\cos\left(\theta \right)}^2+\frac{15}{2}\right)}{\mathrm{e}}^{\phi \ 2{}\mathrm{i}}$  
- Input=`3,1,0`  
Output=  
![Wavefunction](https://github.com/Jatro-Tao/Hydrogen-Atom-Wavefunction/blob/main/Image/Wavefunction_3_1_0.png "Wavefunction")
