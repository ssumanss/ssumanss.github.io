## KKT Conditions

Find the minimum (over $x$, $y$) of the function $f(x,y)$, subject to $g(x,y)=0$, where 

$$
\begin{alignat*}{2}
    & \text{minimize: } && 2 x^2 + 3 y^2 \\
    & \text{subject to: } && 
        \begin{aligned}[t]
            x^2 + y^2 &= 4 
        \end{aligned}
\end{alignat*}
$$   

### Step I
  
Defining variable and functions


$\displaystyle 
f = 2 x^{2} + 3 y^{2}\\
g = x^{2} + y^{2} - 4
$


### Step II

Defining lagrangian function.


The lagrangian $L=- \lambda \left(x^{2} + y^{2} - 4\right) + 2 x^{2} + 3 y^{2}$


### Step III

Deriving KKT equations


$\displaystyle - 2 \lambda x + 4 x= 0 \\- 2 \lambda y + 6 y= 0 \\x^{2} + y^{2} - 4= 0 \\$


### Step IV

Solving KKT Conditions to obtain necessary points


|$x$|$y$|$\lambda$|Obj|
|---|---|---|---|
|$-2$|$0$|$2$|$8$|
|$2$|$0$|$2$|$8$|
|$0$|$-2$|$3$|$12$|
|$0$|$2$|$3$|$12$|



### Step V

Computing **Bordered Hessian** for each points


$\displaystyle \bar{H} = \left[\begin{matrix}0 & 2 x & 2 y\\2 x & - 2 \lambda + 4 & 0\\2 y & 0 & - 2 \lambda + 6\end{matrix}\right]$


### Step VI

Determinant of the bordered hessian will provide maxima and minima.


|$x$|$y$|$\lambda$|Obj|Bordered<br>Hessian|
|---|---|---|---|---|
|$-2$|$0$|$2$|$8$|$-32$|
|$2$|$0$|$2$|$8$|$-32$|
|$0$|$-2$|$3$|$12$|$32$|
|$0$|$2$|$3$|$12$|$32$|



**Conclusion:** First two points are minima while third and forth points are maxima.
