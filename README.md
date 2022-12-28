# Hydrogen-Atom-Wavefunction
## Function  
This is a MATLAB function to:  
- Calculate hydrogen(-like) atom Wavefunction $\phi_{nlm}$ and print it in LaTex  
- Plot radial part of wavefunction $R_{nl}(r)$ and radial distribution function $r^2{R_{nl}(r)}^2$  
- Show 3-dimension image of spherical harmonics $Y_{lm}(\theta,\phi)$ 
- Show 3-dimension image of hydrogen atom wavefunction
## Example
- Input=`2,1,0`  
Output=`R_{n=2,l=1}(r)=\frac{\sqrt{6}}{12}{\left(\frac{Z}{a_{0}}\right)}^{3/2}{\left(\frac{Zr}{a_{0}}\right)}{\mathrm{e}}^{-\frac{Z\ r}{2\ a_{0}}}`  
$R_{n=2,l=1}(r)=\frac{\sqrt{6}}{12}{\left(\frac{Z}{a_{0}}\right)}^{3/2}{\left(\frac{Zr}{a_{0}}\right)}{\mathrm{e}}^{-\frac{Z\ r}{2\ a_{0}}}$
- Input=`10,4,2`  
Output=`R_{n=10,l=4}(r)=\frac{\sqrt{715}}{22522500000}{\left(\frac{Z}{a_{0}}\right)}^{3/2}{\left(\frac{2002\ Z^4\ r^4}{{a_{0}}^4}-\frac{1001\ Z^5\ r^5}{5\ {a_{0}}^5}+\frac{182\ Z^6\ r^6}{25\ {a_{0}}^6}-\frac{91\ Z^7\ r^7}{750\ {a_{0}}^7}+\frac{7\ Z^8\ r^8}{7500\ {a_{0}}^8}-\frac{Z^9\ r^9}{375000\ {a_{0}}^9}\right)}{\mathrm{e}}^{-\frac{Z\ r}{10\ a_{0}}}`
$R_{n=10,l=4}(r)=\frac{\sqrt{715}}{22522500000}{\left(\frac{Z}{a_{0}}\right)}^{3/2}{\left(\frac{2002\ Z^4\ r^4}{{a_{0}}^4}-\frac{1001\ Z^5\ r^5}{5\ {a_{0}}^5}+\frac{182\ Z^6\ r^6}{25\ {a_{0}}^6}-\frac{91\ Z^7\ r^7}{750\ {a_{0}}^7}+\frac{7\ Z^8\ r^8}{7500\ {a_{0}}^8}-\frac{Z^9\ r^9}{375000\ {a_{0}}^9}\right)}{\mathrm{e}}^{-\frac{Z\ r}{10\ a_{0}}}$  
- Input=`3,1,0`  
Output=  
![Radial](https://github.com/Jatro-Tao/Hydrogen-Atom-Wavefunction/blob/main/Image/Radial_n%3D3_l%3D1.png "Radial wavefunction")
