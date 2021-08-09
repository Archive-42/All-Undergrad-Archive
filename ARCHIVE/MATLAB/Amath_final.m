
%{
Quiz#1:
Problem 1 
Let f(x) = cos(m?x) and g(x) = sin(n?x) for integers m > 0, n > 0.
(a) Show that f and g are orthogonal to each other on the interval [0, 2] for all possible values of m and n.


We must show that (f, g) = 0 for all possible values of m and n:  2
(f,g) =(integral from 0 to 2)[cos(m?x) sin(n?x) dx]  
=1/2(integral from 0 to 2) [(sin(m?x + n?x) - sin(m?x - n?x)) dx]
=1/2(integral from 0 to 2)[sin((m + n)?x)dx] - 1/2(integral from 0 to 2)[ sin((m - n)?x)dx]
=[1/2*cos((m + n)?x)/(2*(m+n)?)](evaluated from 0 to 2) +[1/2 cos((m - n)?x)/(2(m-n)?)](evaluated from 0 to 2)  

The right side is defined only for m ?=  n.
In this case, we have:
(f,g) = [(?cos(2(m+n)?)?cos(0))/(2(m + n)?)](from 0 to 2) + [(cos(2(m?n)?)-cos(0))/(2(m - n)?)](from 0 to 2)
=(-(1-1)/(2(m + n)?)+(1-1)/(2(m ? n)?) = 0+0=0
     
since cos(2r?) = cos(0) = 1 for any integer r. In the case of m = n:
(f,g) =(integral from 0 to 2) [cos(n?x) sin(n?x) dx]  
=0.5(integral from 0 to 2)[(sin(2n?x) - sin(0)) dx]
=0.5(integral from 0 to 2)[ sin(2n?x)dx]= [-(cos(2n?x)/(4n?))](from 0 to 2)=-(1-1)/(4n?)=0

(b) What is the norm of f on [0,1]? 
1?1 4n? 0 4n?
The squared norm is:
||f(x)||^2 =(integral from 0 to 1)[(cos^2(m?x)) dx]=1/2*(integral from 0 to 1)[(1+cos(2m?x)dx]
=[x/2](from 0 to 1)+[sin(2m?x)/(4m?)](from 0 to 1)=1/2+0=1/2
 The norm is the square root of this:||f(x)|| = ? 2


Problem 2 
Let f(x) ={0 ?? < x < 0}{2x 0?x<?}

(a) Expand f(x) in a Fourier series. (Write it as a summation.)
Recognizing that p = ? and that the integral over (??, 0) is always 0, the Fourier coefficients are calculated as follows:

a0=(1/?)(integral from 0 to pi)[2x dx]=[(1/?)*x^2](from 0 to pi)=?

an = (1/?)(integral from 0 to pi)[2x cos(nx) dx]
=(2/?)([(x/n)*sin(nx)](from 0 to pi)-(integral from 0 to pi)[(1/n)*sin(nx)dx])   
=(2/(?n^2))*((-1)^(n)-1)

bn = (1/?)(integral from 0 to pi)[2x*sin(nx)dx]
=(2/?)([(-x/n)*cos(nc)(from 0 to pi)+(integral from 0 to pi)[(1/n^2)*sin(nx)]=(2/n)(-1)^(n+1)
   

(b) Plot what the Fourier series from (a) will converge to 
(i.e., with an infinite # of terms over (-3pi,3pi)
The Fourier series will converge to the periodic extension of f;
with a fundamental period of 2?, and to (2? ? 0)/2 at the points of discontinuity ?3?, ??, ?, 3?:




Quiz# 2

Problem 1 
Letf(x)=  {0 0<x<1/2}{1 1/2?x<1} //piecewise

(a) Expand f (x) as a complex Fourier series. Write it as a summation. 
To calculate cn in the series, we identify the period T = 1, and therefore p = T/2 = 1/2 in the formula.
 Then:
Cn=(1/2p)(integral from -p to p)[f(x)*e^(-in?x/p)dt]=(integral from 1/2to1)[e^(-2in?x)dx]
=(i/(2n?))(1-(-1)^n)



This term is not defined for n = 0. So we must calculate that one separately:
c0 = 1*(integral from 0 to 1)[f(x)dx]=(integral from .5 to1)[dx]=1/2

Plug into complex fourier series formula

(b) Suppose f(x) is expanded in a cosine series, a sine series, and a Fourier
series. Sketch what these three series will converge to over (?3, 3). 
 In all cases, the Fourier series will be periodic; the question is what the
periodic function will look like.

-->Fourier series (repeated version of function outside of (0,1)
-->Cos series (even function that is repeated versions of the function reflected over the y axzis)
-->Sin series (odd function that is repeated versions of the function reflected over the origin on (-1,1))


(c) If x is time, then the fundamental period is T = 1, so the fundamental angular frequency is w = 2?/T = 2?.
 The frequency components of the signal are at multiples of w, i.e., nw for n in the Fourier series expansion.
 The magnitudes at these points are:
|Cn|={1/2, n=0}{1/(npi), n= +- 1,3,5,...}{0, n=+-2,4,6,...}

Gives spectrum plot of freq vs mag: in (+w):
(0,.5),(w,1/pi),(2w,0),(5w,1/5pi)
in (-w):
(-w,1/pi),(-2w,0),(-3w,1/3pi),(-5w,1/5pi)



Problem 2 
Solve the partial differential equation
?(^2)u/?x(^2) + 4?(^2)u/?y(^2) = 0 
using the separation of variables method. (There are three cases to consider.)

Assuming u(x,y) = X(x)Y(y), with the shorthand u = XY, the PDE becomes:
 X"Y + 4XY"= 0, or X"Y = ?4XY". Dividing both sides by X*Y , we have:
(X"/X)=-4(Y"/Y)=-?
for the separation constant ? ? (??, +?). We then have two differential equations:
X"+?X=0  &   Y"-(?Y)/4=0

There are three cases of ? that will change the nature of the solution: ? < 0, ? = 0, and ? > 0. We must consider each of them separately.

Case I: ? = ??^2 < 0, ? > 0
The roots of the auxiliary equations are
m = ±?  m = ±(?i)/2
Which give the solutions
 X(x)=c1*e^?x +c2*e??x
Y(y)=c3*cos(?y/2)+c4*sin(?y/2)

And the product solution
   u(x,y) =  (c1*e^?x +c2*e??x) *  (c3*cos(?y/2)+c4*sin(?y/2))
= A*e^?x*cos(?y)+B*e^??x*cos(?y)+C*e^?x*sin(?y)+Dc2*e^??x*sin(?y) 


Case II: ? = 0
      
The roots of the auxiliary equations are
m = ±0 m = ±0
Which give the solutions
X(x)=c1 +c2x Y(y)=c3 +c4y
And the product solution
u(x,y) = (c1 +c2x)(c3 +c4y)
= A+Bx+Cy+Dxy


 Case III: ? = +?^2 > 0, ? > 0
The roots of the auxiliary equations are m = ±?i & m = ±?/2
Which give the solutions
X(x)=c1*cos(?x)+c2*sin(?x)
Y(y)=c3*e^(?y/2) +c4*e?(?y/2)
And the product solution


 u(x, y) = (c1*cos(?x)+c2*sin(?x))*  (c3*e^(?y/2) +c4*e?(?y/2))
= A*e^(?y/2)*cos(?x) + B*e^(?y/2)* sin (?x) + C*e^(??y/2)* cos (?x) + D*e^(??y/2)* sin ?x





Quiz# 3




Problem 1 [7 pts]
Consider a thin rod that coincides with the x-axis on the interval [0, 1].
The left side is held at temperature 0, the right side is insulated, and the initial temperature is f(x) throughout.
(a) Set up the boundary-value problem for the temperature u(x, t). 
The boundary conditions on the left and right sides mean U(0,t) = 0 and Ux(1, t) = 0. 
Therefore, the BVP is
k*?(^2)u/?x(^2) = ?u/?t 0?x?1 , t>0
 
u(0,t) = 0,
Ux(1,t) = 0 ,  t > 0
u(x,0)=f(x),  0?x?1

(b) Solve for u(x,t) using separation of variables. Be sure to consider all
possible cases. Your final answer should be in terms of f(x) and k. 
Assuming u = XT, we have
kX"T =XT'
 X"/X=T'/(kT)=??
This gives two differential equations:

X"+ ?X = 0 & T' + ?kT = 0 
Starting with X"+ ?X = 0, there are three cases:
Case I: ? = ??^2 < 0, ? > 0
The roots are real: m = ±?,
 so X(x) = c1*cosh(?x) + c2*sinh(?x). Since X'(x) = c1*?*sinh(?x) + c2*?*cosh(?x)
 X(0) = 0 implies c1 = 0 and X'(1) = 0 implies c2*?*sinh(1*?) = 0.
 But sinh( b) is always positive for b > 0, so this means c2 = 0 also.
 Therefore this case is trivial.

Case II: ? = 0
This is a repeated root m = 0,0.
 So, X(x) = c1 + c2x, and X'(x) = c2.
 X(0)=0 meansc1 =0, andX'(1)=0 meansc2 =0. 
Again,thiscaseis trivial.
  
Case III: ? = +?^2,? > 0
The roots are imaginary: m = ±?i.
 So, X(x) = c1 cos ?x + c2 sin ?x.
 X(0) = 0 implies c1 = 0. X'(x) = c2*?*cos(?x), so X'(1) = c2*?*cos(1?) = 0. 
This is true for ? = ?/2, 3?/2, ..., so
?_n----> means ? underscore n
?_n=??/2+?n=?(2n?1), n=1,2,...
  And
X (x) = c2*sin ((?/2)*x*(2n ? 1))
 Knowing ?_n = [?/2 (2n ? 1)]^2, we can solve the T component: m = ?k?,so:
T (t) = c3* e^(?k[ ?/2 (2n?1)]^2 
  

By superposition of the product solutions u_n(x, t) n = 1, 2, ..., we have 
u(x,t)=(sum from n=1 to ?)  Bn*sin ((?/2)(2n?1)x] e^(t*(?k[ ?/2 (2n?1)]^2) 

Then applying the initial condition,
U(x,0)=(sum from n=1 to ?)Bn* sin(?/2(2n?1)x) = f(x)

Bn=(2/L)(integral from 0 to L)[f(x)*sin(?/2(2n?1)x)dx]
=2*(integral from 0 to 1)[f(x)*sin(?/2(2n?1)x)dx]

(c) Letting f(x) = 10 and k = 1, find u(x,t). 
To find Bn we integrate:
  Bn = 2*(integral from 0 to 1)[10sin(?/2(2n?1)xdx]
=(?40/((2n?1)?))*(cos(?/2(2n?1)x)(from 0 to 1)
=40/((2n-1)?) 

u(x,t) =(sum from n=1 to ?)40/((2n-1)?)*sin(?/4(2n?1)x)*e^(t*(?k[ ?/2 (2n?1)]^2)


Problem 2 [3 pts]
Consider a string stretched taught on the x-axis over [0, ?], freely vibrating in the vertical plane.
The vertical displacement u(x, t) of the string takes the following form:
u(x, t) = 0.5 cos(at)*sin(x) + sin(3at)*sin(3x)
(a) What is the boundary-value problem for u(x, t) in terms of a? 

Since we are given u(x,t), we just have to reverse-engineer the boundary conditions.
For the Wave Equation, we need u(0, t), u(?, t), u(x, 0), and u_t(x, 0):
u(0, t) = u(?, t) = 0, which is always the case.
u(x, 0) = 0.5 · 1 · sin(x) + 0 · sin(3x) = 0.5 sin(x).
u_t(x, t) = ?0.5a*sin(at) sin(x) + 3a cos(3at) sin(3x).
 So u_t(x, 0) = ?0.5a · 0 · sin(x) + 3a · 1 · sin(3x) = 3a sin(3x).
Therefore, the BVP is
(a^2)*?(^2)u/?x(^2)=?(^2)u/?t(^2) 0?x??,t>0
 
u(0,t) = 0 , ux(?,t) = 0     t > 0
u(x,0) = 0.5sin(x),
u_t(x,0) = 3a*sin(3x)
(b) Which of the standing waves, if any, are non-zero? 
The standing waves correspond to the different values of n making up the solution.
 In this case, u(x, t) = u1(x, t) + u3(x, t), where u1(x, t) = 0.5 cos (at) sin (x) and u3(x, t) = sin (3at) sin (3x).
 So, the first and third standing waves are non-zero.




Quiz# 4
Problem 1 
Indicate whether each of the following statements is true or false.
If it is false, write a sentence explaining why.
(i) Randomization in sampling is important because it guarantees that any sample will accurately represent the population.

False. Randomization doesn?t guarantee every sample will accurately rep- resent the population. 
It guarantees that any sample has no systematic tendency to deviate from the population.
 Differences may exist, but when they do, it will be due to random variation.

(ii) Randomly choosing 100 people to poll from each of the 50 states would constitute a simple random sample of the United States population.

False. In an SRS, every person in the US would have an equal chance of being selected for the sample.
Choosing 100 people state-by-state is stratified sampling, where every person in each state has an equal chance,
 i.e., people who live in states with more people have less chance of being selected.

(iii) If we are worried about outliers, we may use the median and interquar- tile range as measures of center and spread as opposed to the mean and standard deviation.
True. These measures are not sensitive to outliers.

(iv) The variance has the same unit of measurement as the sample.
False. The variance is in squared units; the standard deviation is in the same units as the sample.

(v) The three quartiles of a dataset can be taken as the 25th, 50th, and 75th percentiles.
True: Q1, Q2, and Q3 are these percentiles.

(vi) The mean and median of a dataset will never be equivalent.
False: They will be equivalent when the distribution is symmetric.




Problem 2 [4 pts, 1 pt each]
Consider the following dataset of 10 samples:
16 1 17 18 23 19 50 18 13 25
(i) [Computer Permitted] What are the mean and standard deviation?
##MATLAB code:
x = [16 1 17 18 23 19 50 18 13 25];
mean(x)
std(x)
The mean is Xbar= 20, and the standard deviation s_X = 12.37.
(ii) [Computer Permitted] What are the median and 11% trimmed mean?
##MATLAB code:
median(x)
trimmean(x,11)
The median is 18, and the 11% trimmed mean is 18.63 (ignoring the largest and smallest value).
Dataset from smallest to largest:
1 13 16 17 18 18 19 23 25 50
(iii) [Computer Permitted] What are the quartiles and interquartile range?
##MATLAB code:
prctile(x,25)  #Q1
prctile(x,50)  #Q2
prctile(x,75)  #Q3
iqr(x)
The quartiles are Q1 = 16, Q2 = 18, and Q3 = 23. The interquartile range is 23 ? 16 = 7.

(iv) Does the dataset have any outliers? Explain.
The smallest and largest values ? 1 and 50 ? can be considered left and right outliers, since they are rather far from the median.
 They also qualify as outliers in the quartile definition since 50 > 23 + 1.5 × IQR and 1 < 16?1.5×IQR.



Problem 3 
In circuits lab, we measure the voltage (V) across a resistor 70 times, and
come up with an average of 0.4V and a standard deviation of 0.05V.

(i) We determine that there was a systematic error in our sampling process which caused us to estimate too high by 0.1V each time we took a mea- surement.
 How would we adjust the mean and standard deviation without recalculating?
If each measurement was too high by 0.1, then the sample mean should be adjusted to 0.4 ? 0.1 = 0.3 V.
 The standard deviation will not change.

(ii) We want to report measurements in millivolts (mV) rather than volts (1V = 1000mV).
 How would we adjust the mean and standard deviation without recalculating?
The mean and standard deviation will scale by the same factor: 300 mV and 50 mV.

(iii) We take another 30 measurements, and come up with an average of 0.2V and a standard deviation of 0.01V (without bias) for this new set of 30.
 What is the mean of the combined sample of 100 measurements?
We have a mean of 0.3 from 70 samples, and 0.2 from 30 samples. To combine them, we take the weighted average:
(0.3×70+0.2×30)/(70+30) =0.27V
Note that the numerator here is the sum of voltages: Xbar=(sum_i)[X_i/n]=  , so  (sum_i)X_i = Xbar*n
 We add these sums from the sample of 30 and 70 and divide by the total.



Quiz# 5

Problem 1 
Consider the system comprised of components A ? E below.

(a system of components that starts with A in series with 2 parallel
branches that contain B&C and D&E respectivly and recombine to form
output.)

(i) Let Z be the event that the system functions, and let A,...,E be the events that each component functions.
 Express Z in terms of A, ..., E (i.e., as a combination of union, intersection, and/or complement operations).

B and C are in series, as are D and E, so the events on these branches are B ? C, D ? E. 
These subsystems are in parallel, so the combination of the four is (B?C)?(D?E). Since this is in series with A, the full event Z is
Z =A?((B?C)?(D?E))
(ii) What is P (Z) in terms of P (A), ..., P (E)? Assume each component
functions independently.
For independent events A1 and A2, P (A1 ? A2) = P (A1)P (A2) and P (A1 ?
A2)=P(A1)+P(A2)?P(A1)P(A2). Therefore,
P(Z) = P(A)P((B?C)?(D?E))
= P(A)(P(B?C)+P(D?E)?P((B?C)?(D?E))) = P(A)(P(B)P(C)+P(D)P(E)?P(B?C)P(D?E)) = P(A)(P(B)P(C)+P(D)P(E)?P(B)P(C)P(D)(E))

(iii) Suppose A has a 90% chance of functioning properly, B and D also have 90%, and C and E have 80%. What is the probability that the system functions?
Using these values,
P(Z) = 0.9(0.9·0.8+0.9·0.8?0.9·0.8·0.9·0.8) = 0.8294
or about 83%.
 
Problem 2 
A box of 20 resistors contains 5 that are out of spec. We select two of them
at random to complete our circuit.
(i) How many choices of resistors are possible?
This is a combination operation because order does not matter: picking A followed by B is the same as B followed by A.
(20) 
(2) =190
(ii) What is the probability that the first resistor is out of spec?
Let A be the event that the first resistor is out of spec. Out of the 20 possibilities, 5 are out of spec. So,
P (A) = 5/20 = 0.25
(iii) What is the probability that both resistors are out of spec? Let B be the event the second resistor is out of spec.
P (A ? B) = P (A)P (B|A) = (5/20)(4/19) = 0.0526
(iv) What is the probability that the second resistor is out of spec? To find P(B), we use the law of total probability:
P(B) = P(A ? B) + P(Ac ? B) = (5/20)(4/19) + (15/20)(5/19) = 0.25
(v) If the first resistor was out of spec, what is the probability that the second resistor is out of spec?
This is P(B|A). That is calculated by
P (B|A) = P (B ? A)/P (A) = 0.0526/0.25 = 0.2104
(vi) Are the events ?first resistor out of spec? and ?second resistor out of spec? independent? Are they mutually exclusive? Explain.
They are not independent because P(B|A) = 0.2104 ?= P(B) = 0.25, i.e., A occurring changes the chance that B will occur. They are not mutually exclusive because P (A ? B) = 0.0526 ?= 0, i.e., A and B can occur together.
Below is the tree diagram for this problem, illustrating the different proba- bilities.
 
Problem 3 
Through repeated measurements, we have determined that a random vari-
able X has a mean ?X = 0.8 and standard deviation ?X = 0.16.
(i) Determine an upper bound on the probability that X falls outside the
range (0.6, 1.0).
This range is ±0.2 around the mean, which is k = 0.20/?X = 1.25 stan- dard deviations. Since we don?t know the distribution of X, we use the Chebyschev inequality:
P(|X ? ?X| ? 1.25?X) ? 1/1.252 = 0.64
So, the probability of X falling outside this range is at most 64%.

(ii) We use our data to fit X to the cumulative distribution function (CDF)
F_X(x)={0, x<=0}{c*x^4, 0<x<1}{1, x>=1}
for some constant c. What value of c will make this a valid CDF? Why?
We know immediately that c ? [0, 1], since the density cannot be negative andFX(x)?1forallvaluesofx. Butifc?=1,thentherewillbeajump discontinuity in FX (x) at x = 1, which would require P (X = 1) > 0; if X is a continuous random variable (which it obviously is), then this cannot happen, because the probability of any particularly value occurring is 0. So, c = 1.

(iii) Find the probability density function (PDF) fX (x). SincefX(x)= dFX(x),
f_X(x)={0, x<=0}{4x^3, 0<x<1}{0, x>=1}

 
The mean and variance are calculated as:
formulas


(v) What is the actual probability that X falls outside (0.6, 1.0)?
We could integrate fX (x), or just use the CDF directly: Since P (X > 1) = 0,
P (X < 0.6 or X > 1.0) = F_X (0.6) = 0.1296
So, the actual probability is about 13%, which is substantially lower than the 64% from (i).


Quiz# 6





Consider a thin rectangular plate with vertical edges x = 0 and x = ? in- sulated, and horizontal edges y = 0 and y = 2? maintained at 0 and f(x), respectively.

(a) Set up the boundary-value problem for the steady-state temperature u(x, y) at any given point (x, y) on the plate. Draw a diagram to represent the situation. 
From Laplace?s Equation, the boundary-value problem is: X"+Y"=0 , 0< x < ?,  0 < y < 2?

ux(0,y)=0, ux(?,y)=0 0<y<2? u(x,0)=0, u(x,2?)=f(x) 0<x<?

(b) Solve for u(x,y) using separation of variables. Be sure to consider all possible cases, showing which are trivial and which are not. Your final an- swer should be in terms of f(x). [2 pts]
   Assuming u = XY , we have
X"Y+XY"=0
devide both by XY , set equal to -?







This gives two differential equations:
X"+?X=0  &   Y"-?Y=0
Starting with X?? + ?X = 0, there are three cases. We consider those to- gether with the boundary conditions X?(0) = X?(?) = 0:
Case I: ? = ??2 < 0, ? > 0
The roots are real: m = ±?, so X(x) = c1 cosh?x + c2 sinh?x. Since X?(x)=c1?sinh?x+c2?cosh?x,X?(0)=0impliesc2 =0andX?(?)=0 implies c2? sinh ?? = 0. Since sinh ?? is always positive for ?? > 0, c1 = 0 also. Therefore this case is trivial.
Case II: ? = 0
This is a repeated root m = 0,0. So, X(x) = c1 + c2x, and X?(x) = c2. X?(0) = 0 means c2 = 0, and X?(1) = 0 doesn?t give any more information. So, X(x) = c1 is a constant solution.
Case III: ? = +?2,? > 0
The roots are imaginary: m = ±?i. So, X(x) = c1 cos ?x + c2 sin ?x, and X?(x) = ??c1 sin?x + ?c2 cos?x. X?(0) = 0 implies c2 = 0. X?(?) = 0 then implies ??c1 sin?? = 0, which means ?? = n?, n = 1,2,3,.... Putting Cases II and III together, we have
 0 n=0 ?n= n n=1,2,...
And corresponding eigenfunctions
 c0 n=0
Xn(x) = cn cosnx n = 1,2,3,...
As for the Y component, we consider ? = 0 and ?n = n^2 with the condition
Y (0) = 0.
For?=0,wehaverepeatedroots: m=0,0. So,Y(y)=d1+d2y. Y(0)=0
meansd1 =0,soY(y)=d2y.
For?=n2,wehavedistinctroots: m=n,?n. Then,Y(y)=d3coshny+ d4sinhny. Y(0)=0meansthatd3 =0,soY(y)=d4sinhny.
The product of X and Y is

u_n(x,y) = {Cn sinhnycosnx n = 1,2,...}{ C0y, n=0}
By superposition of the product solutions u_n(x, y) n = 1, 2, ..., we have

u(x, y) = C0y +  (sum from n=1 to inf ) Cn sinh ny cos nx n=1
Then applying the initial condition,
?
u(x,2?)=2?C0 + Cnsinh2?ncosnx=f(x) n=1
This is a Fourier cosine series. Using the formula for 2?C0,
1 ? 1 ?
2?C0 = ? f(x)dx ? C0 = 2?2 f(x)dx
00
Using the one for Cn sinh 2?n,
2 ? 2 ?
Cn sinh2?n = ? f(x)cosnx dx ? Cn = ?sinh2?n f(x)cosnx dx
00
So,
u(x,y) = 2?2 f(x)dx y + ?sinh2?n f(x)cosnx dx sinhnycosnx
     1 ?  ? 2 ?   0 n=1 0
  (c) Find u(x, y) when f(x) =
 0 0<x<? 2
 1 ? 1 ?
2?2 f(x)dx = 2?2 0
1
10(x ? ?/2)/(?/2) dx = 2?2 · 2.5?
?/2
10(x ? ?/2)/(?/2)
? ? x < ? 2
 [1.5 pts]
   
2 ? 2 ?
  ? sinh 2?n
0
f (x) cos nx dx = =
? sinh 2?n
2
10(x ? ?/2)/(?/2) dx · 20 ((?1)n ? cos(n?/2))
?n2
?/2
  So,
 ? (?1)n ? cos(n?/2)
n=1
1.25 u(x,y) = ? y +
40 (?n)2 sinh2?n sinhnycosnx
=
? sinh 2?n
40(?1)n ?cos(n?/2)
(?n)2 sinh 2?n
   
Problem 2 [5 pts]
Consider a quarter-circular plate of radius c with radial boundaries ? = 0 and ? = ?/2 held at temperature 0, and angular boundary r = c maintained at f(?).
(a) Set up the boundary-value problem for the steady-state temperature u(r, ?) at any given point (r, ?) on the plate. Draw a diagram to represent the situation. [1.5 pts]
From Laplace?s Equation in polar coordinates, the boundary-value problem
is
?2u + 1 ?u + 1 ?2u = 0 0 < r < c, 0 < ? < ?/2 ?r2 r ?r r2 ??2
u(r,0)=0, u(r,?/2)=0 0<r<c u(c,?) = f(?) 0 < ? < ?/2
     Here is a diagram describing this BVP:
   &=0
0
(b) Solve for u(r,?) using separation of variables. Be sure to consider all possible cases, showing which are trivial and which are not, accounting for continuity and periodicity as needed. Your final answer should be in terms of f(?). [2 pts]
Assuming u = R?, we have
R??? + 1R?? + 1 R??? = 0
  r r2
Dividing by R? and multiplying by r2, this becomes
& = )(*) (", ?)
+
   &=0
??? 2R?? R?
? =?r R ?rR =??
   
This gives two differential equations:
??? +??=0 r2R?? +rR? ??R=0
Out of the two equations, it?s better to start with ??? + ?? = 0 since we have the two boundary conditions ?(0) = 0 and ?(?/2) = 0. As with the previous problem, there are three cases:
CaseI:?=??2 <0,?>0Therootsarereal: m=±?,so?(?)= c1cosh??+c2sinh??. ?(0)=0impliesc1 =0. ?(?/2)=c2sinh??/2=0 implies c2 = 0 because sinh is always positive for a positive argument. There- fore this case is trivial.
Case II: ? = 0
This is a repeated root m = 0,0. So, ?(?) = c1 +c2?. ?(0) = 0 means c1 = 0, and ?(?/2) = 0 means c2 = 0. Therefore this case is trivial.
Case III: ? = +?2,? > 0
The roots are imaginary conjugates: m = ±?i. So, ?(?) = c1 cos ?? + c2 sin??. ?(0) = 0 means that c1 = 0. Then, ?(?/2) = c2 sin??/2 = 0 requires that ??/2 = n?, or ?n = 2n, n = 1, 2, .... The eigenfunctions are
?n(?) = cn sin 2n?
As for the R component, we have the eigenvalues ?n = (2n)2. The differen-
tial equation becomes
r2R?? + rR? ? (2n)2R = 0
To solve this Cauchy-Euler Equation, we find the roots of the auxiliary
equation
1m2 +(1?1)m?(2n)2 = 0 for n > 0. So, m = ±2n. This gives the solution
R(r) = c3r2n + c4r?2n
SinceR(r)mustbedefinedfor0?r?c,c4 =0. So,R(r)=c3r2n. The product solution is then
un(r, ?) = Cnr2n sin 2n?
By superposition,
?
u(r, ?) =   Cnr2n sin 2n? n=1
We then apply the final condition u(c, ?) = f (?):
?
u(c,?) =  Cnc2n sin2n? = f(?) n=1
The left hand side is the sine-series expansion of f(?) over (0,?/2). So,
2n 2   ?/2 4   ?/2
Cnc = ?/2 Therefore,
f(?)sin2n? d? ? Cn = ?c2n 00
f(?)sin2n? d?
   ? 4  ?/2   r 2n u(r,?) = ? f(?)sin2n? d? c
sin2n?
  n=1 0
(c) Find u(r,?) when f(?) = sin(4?), 0 < ? < ?/2. [1.5 pts]
This means that
?
u(c,?) =  Cnc2n sin2n? = sin4? n=1
Since the left side turns to a sinusoid with argument 4? at n = 2, we can setCn =0forn?=2,andthenforn=2,
So, the solution is
C2c4 sin4? = sin4? ? C2 = 1/c4  r 4
u(r,?)= c sin4?
You could also integrate   ?/2 f (?) sin 2n? d? directly, from which you will
0
get 0 when n ?= 2 and ?/4 when n = 2.






Quiz# 7

Problem 1 [3 pts]
Consider three normally distributed random variables A ? N(15,2), B ?
N(10,3),andC?N(3,1)intheformatN(?,?2). LetD=A?B+2C.
(a) What is the distribution of D?
Linear combinations of normal random variables are themselves normally distributed. In particular, for X1 ? N(?1, ?12), X2 ? N(?2, ?2), ..., Xn ? N(?N,?N2 ), then
c1X1+c2X2+···+cNXn ? N(c1?1+c2?2+···+cN?N,c21?12+c2?2+···+c2N?N2 ) The means will combine, while the variances will always add. Therefore,
?D =1·15?1·10+2·3=11 ?D2 = 12 ·2+(?1)2 ·3+(2)2 ·1 = 9
So, D ? N(11, 9).
(b) What is P (7 < D < 10)?
We can either integrate the PDF of D numerically using e.g., MATLAB or resort to the z-tables. Let?s use the latter approach here. The z-scores for 7 and 10 are
7?11 10?11
z7 = ?9 =?1.333 z10 = 3 =?0.333
Now, P(7 < D < 10) = P(?1.333 < Z < ?0.333) = P(Z < ?0.333)? P(Z < ?1.333). These last two quantities come directly from the z-table: 0.3707 ? 0.0918 = 0.2789, or 27.9%.
(c) For which interval (? ? d, ? + d) around the mean is P (? ? d < D < ? + d) = 0.80?
Since it?s a symmetric interval about ?, we need to find the z-scores z1 andz2 suchthatP(Z<z1)=0.1andP(Z>z2)=0.1(sincehalfthe area is in each tail). These are roughly z1 = ?1.28 and z2 = +1.28, i.e., P(?1.28 < Z < 1.28) = 0.8. Now, we multiply by ? to get the deviation from ?: d = 1.28 · 3 = 3.84. So, the interval is
(11 ? 3.84, 11 + 3.84) = (7.16, 14.84)
   
Problem 2 [3.5 pts]
Each bit sent over a noisy communication channel has a chance of being re- ceived incorrectly. Suppose we send 50 bits over a channel, and find that 10 of them are improperly received. We want to model the outcome of sending another n bits.
(a) What is the estimated probability p? of a bit being received incorrectly on this channel? What is the uncertainty in this estimate?
This process follows a Binomial random variable. To estimate the success (or, in this case, more like ?failure?) probability p?, we find the fraction of successes. This and its uncertainty are given by
X 10  p(1?p)  0.2·0.8
p? = n = 50 = 0.2 ?p? = n = 50 = 0.0566
(b) Use p? from (a) to express the number of incorrect bits out of n as a Binomial random variable X.
If we use p = p?, then X ? Bin(n,0.2).
(c) If n = 5, find the probability mass function of X.
Using the PMF of a binomial random variable,
        5! (0.2)x(0.8)5?x x = 0, 1, ..., 5 x!(5?x)!
 pX (x) =
The numbers for each value of x are in the following table:
0 otherwise
 x012345 pX(x) 0.3277 0.4096 0.2048 0.0512 0.0064 0.0003
(d) If n = 5, what is the probability that at least 2 bits are received incor- rectly?
P(X ?2)=1?P(X <2) = 1?P(X =0)?P(X =1)?P(X =2) = 1 ? 0.3277 ? 0.4096 ? 0.2048 = 0.0579
Which is about a 5.8% chance.
  
Problem 3 [3.5 pts]
The datapoints 20, 22, 23, 25, 27 are drawn from a population. We want to
construct a confidence interval for the population mean.
(a) Do we need to know anything more about the population? Why or why not?
Yes. Since the sample size is small, the central limit theorem does not apply. We need to know that the population is approximately normal so that the small sample means will follow the Student?s t-distribution.
(b) Find a 95% two-sided confidence interval for ?.
A two-sided confidence interval for a small sample (from a normal popula-
tion) is
 ?s X ± tn?1,?/2 ?n
  We can use the datapoints to compute X ? and s: X ? = 23.4 s = 2.70
At a confidence level of 95%, ? = 0.05, so ?/2 = 0.025 on each tail. With n ? 1 = 4 degrees of freedom, the t-table tells us t4,0.025 = 2.776. So,
2.70
23.4 ± 2.776 ?
In other words, from the given sample, we are 95% confident ? lies within
(20.048, 26.752).
(c) Find a 95% lower confidence interval for ?.
In this case, we need ? = 0.05 in the lower tail, so the statistic is t4,0.05. The 95% lower confidence bound is
 ? s 2.70 X?tn?1,??n=23.4?2.132?5 =20.826
So, the lower confidence interval is
(20.826, ?)
  5
= 23.4 ± 3.352 = (20.048, 26.752)
    
(d) Roughly how confident can we be that ? lies in (21.2, 25.6)?
This interval corresponds to 23.4 ± 2.2, so we need to determine ? such
?
that t4,?/2 · (2.70/ 5) = 2.2, or t4,?/2 = 1.822. From the t-table, we know
 t4,0.10 = 1.533 and t4,0.05 = 2.132, so we interpolate between these two for ?/2:
2.132 ? 1.533 = 1.822 ? 1.533 0.05 ? 0.10 ?/2 ? 0.10
This gives ?/2 ? 0.0759, or ? ? 0.1518. So, we can be about 100 ? 15.18 = 84.82% confident.
If we evaluate the t-distribution exactly using e.g., the MATLAB function tinv(x,n-1) with x = 1.822 and n ? 1 = 4, we find the actual value of ?/2 = 0.0828. So, the linear interpolation is off by about 1%.






