The main method to solve linear programming problem in python is given by the following command 

``` python
scipy.optimize.linprog(c, 
                       A_ub=None, 
                       b_ub=None, 
                       A_eq=None, 
                       b_eq=None, 
                       bounds=None, 
                       method='revised simplex', 
                       callback=None, 
                       options=None, 
                       x0=None)
```

Where the value of each argument is given by comparing the linear programming with the following linear programn

$$
\begin{alignat*}{2}
    & \text{minimize: } && c^T x \\
    & \text{subject to: } && 
        \begin{aligned}[t]
            A_{ub}x &\leq b_{ub} \\
            A_{eq}x &= b_{eq} \\
            l\leq x &\leq u
        \end{aligned}
\end{alignat*}
$$

### Example 
```python
c = [-1, 4]
A = [[-3, 1], 
     [1, 2]]
b = [6, 4]
x0_bounds = (None, None)
x1_bounds = (-3, None)

res = linprog(c, A_ub=A, b_ub=b, bounds=[x0_bounds, x1_bounds], method='simplex')
```


           message: The problem is unbounded. (HiGHS Status 10: model_status is Unbounded; primal_status is At upper bound)
           success: False
            status: 3
               fun: None
                 x: None
               nit: 3
             lower:  residual: None
                    marginals: None
             upper:  residual: None
                    marginals: None
             eqlin:  residual: None
                    marginals: None
           ineqlin:  residual: None
                    marginals: None


#### Example 1.a
Now let's try to solve the following problem from the assignment 

\begin{alignat*}{2}
    & \text{minimize: } && x_1 - 2x_2 - 4x_3 + 2x_4 \\
    & \text{subject to: } && 
        \begin{aligned}[t]
            x_1 - 2x_3 &\leq 4 \\
            x_2 - x_4  &\leq 8 \\
            -2x_1 + x_2 + 8x_3 + x_4  &\leq 12  \\
            x_1,x_2,x_3,x_4     &\geq 0
        \end{aligned}
\end{alignat*}

We have to use the following command to solve this problem 


            message: Optimization terminated successfully. (HiGHS Status 7: Optimal)
            success: True
             status: 0
                fun: -18.0
                  x: [ 0.000e+00  8.000e+00  5.000e-01  0.000e+00]
                nit: 4
              lower:  residual: [ 0.000e+00  8.000e+00  5.000e-01  0.000e+00]
                     marginals: [ 0.000e+00  0.000e+00  0.000e+00  1.000e+00]
              upper:  residual: [       inf        inf        inf        inf]
                     marginals: [ 0.000e+00  0.000e+00  0.000e+00  0.000e+00]
              eqlin:  residual: []
                     marginals: []
            ineqlin:  residual: [ 5.000e+00  0.000e+00  0.000e+00]
                     marginals: [-0.000e+00 -1.500e+00 -5.000e-01]
     mip_node_count: 0
     mip_dual_bound: 0.0
            mip_gap: 0.0


We can use a small function to extract the important information and print in a line as follows.




The value of optimal is $-18$ at $(0,8,1/2,0)$



#### Example 1.b

We can solve the second assignment 

\begin{alignat*}{2}
& \text{minimize: } && 2x-y+2z \\
& \text{subject to: } && 
    \begin{aligned}[t]
        2x + y  &\leq 10 \\
        x+2y-2z &\leq 20 \\
        y+2z    &\leq 5  \\
        x,y,z   &\geq 0
    \end{aligned}
\end{alignat*}




The value of optimal is $-5$ at $(0,5,0)$



#### Example 1.c

We can solve the second assignment 

\begin{alignat*}{2}
    & \text{maximize: } && x_1 + 2x_2 + 2x_3, \\
    & \text{subject to: } && 
        \begin{aligned}[t]
            5x_1 + 2x_2 + 3x_3  &\leq 15 \\
            x_1  + 4x_2 + 2x_3  &\leq 12 \\
            2x_1        + x_3   &\leq 8  \\
            x_1,x_2,x_3     &\geq 0
        \end{aligned}
\end{alignat*} 




The value of optimal is $21/2$ at $(0,3/4,9/2)$



#### Example 2.a

We can solve the second assignment 

\begin{alignat*}{2}
    & \text{maximize: } &&  3x_1 - x_2 \\
    & \text{subject to: } && 
        \begin{aligned}[t]
            2x_1 + x_2 &\geq 2 \\
            x_1 + 3x_2 &\leq 2 \\
            x_2 &\leq 4 \\
            x_1,x_2     &\geq 0
        \end{aligned}
\end{alignat*}




The value of optimal is $6$ at $(2,0)$



#### Example 5.a

We can solve the second assignment 

\begin{alignat*}{2}
    & \text{maximize: } &&  2x+4y \\
    & \text{subject to: } && 
        \begin{aligned}[t]
             x + 2y &\leq 5 \\
             x +  y &\leq 4 \\
            x, y    &\geq 0
        \end{aligned}
\end{alignat*}




The value of optimal is $10$ at $(0,5/2)$



#### Example 4

Consider the following linear programming problem

\begin{alignat*}{2}
    & \text{maximize: } &&  3x+2y \\
    & \text{subject to: } && 
        \begin{aligned}[t]
            4x - y &\leq 4 \\
            4x +3y &\leq 6 \\
            4x + y &\leq 4 \\
            x, y   &\geq 0
        \end{aligned}
\end{alignat*}  




The value of optimal is $17/4$ at $(6755399441055743/9007199254740992,4503599627370497/4503599627370496)$



#### Example 6.b
Show that the following problem has unbounded objective

\begin{alignat*}{2}
& \text{maximize: } && 20x_1 + 5x_2 + x_3 \\
& \text{subject to: } && 
    \begin{aligned}[t]
        3x_1 + 5x_2 - 5x_3  &\leq 50 \\
        x_1 + 3x_2 - 4x_3   &\leq 20 \\
        x_1                 &\leq 10 \\
            x_1, x_2, x_3     &\geq 0
    \end{aligned}
\end{alignat*}  





    'The problem is unbounded. (HiGHS Status 10: model_status is Unbounded; primal_status is At upper bound)'



#### Example 3.b
Consider the following problem, in the phase I, the artificial variable didn't leave but assumes the value $0$, hence we can remove it and continue with phase II

\begin{alignat*}{2}
& \text{maximize: } && 2x_1 + 2x_2 + 4 x_3 \\
& \text{subject to: } && 
    \begin{aligned}[t]
          2x_1 + x_2 + x_3 &\leq 2 \\
        3x_1 + 4x_2 + 2x_3  &\geq 8 \\
          x_1, x_2, x_3     &\geq 0
    \end{aligned}
\end{alignat*}   





The value of optimal is $4$ at $(0,2,0)$


