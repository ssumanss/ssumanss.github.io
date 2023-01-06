Solve the following optimization problem
$$
\begin{alignat*}{2}
    & \text{maximize: } && c^Tx \\
    & \text{subject to: } && 
        \begin{aligned}[t]
             Ax &\leq b\\
              x &\geq 0 
        \end{aligned}
\end{alignat*}
$$   


### Concrete Problem

$$
\begin{alignat*}{2}
    & \text{maximize: } && z = 2x + 3y\\
    & \text{subject to: } && 
        \begin{aligned}[t]
             x + 3y  &\leq 12 \\
            3x + 2y  &\leq 12 \\
              x, y &\geq 0 
        \end{aligned}
\end{alignat*}
$$   



### Step I

Fromulating the problem and creating the first table for simplex algorithm.


|Basic|$x$|$y$|$s_{1}$|$s_{2}$|Solution|Ratio|
|-----|-----|-----|-----|-----|-----|-----|
|$z$|$-2$|$-3$|$0$|$0$|$0$|
|$s_{1}$|$1$|$3$|$1$|$0$|$12$|
|$s_{2}$|$3$|$2$|$0$|$1$|$12$|



### Step II

We have to choose an entering variable which will increase the value of objective. So we choose any variable with negative coefficient. Here we choose $y$. 


|Basic|$x$|$y$|$s_{1}$|$s_{2}$|Solution|Ratio|
|-----|-----|-----|-----|-----|-----|-----|
|$z$|$-2$|$-3$|$0$|$0$|$0$|$0$|
|$s_{1}$|$1$|$3$|$1$|$0$|$12$|$4$|
|$s_{2}$|$3$|$2$|$0$|$1$|$12$|$6$|



### Step III 

We have to choose a leaving variable based on ratio analysis. Here we choose the variable with least positive ratio. In this table $s_1$ has the least positive ratio, so it will leave. Now we have to perform the pivoting step.

### Step IV

After pivoting we get a new table. Where we can repreat the above steps again and again till the simplex algorithm terminate. In ideal case we get no entering varable. 


|Basic|$x$|$y$|$s_{1}$|$s_{2}$|Solution|Ratio|
|-----|-----|-----|-----|-----|-----|-----|
|$z$|$-1$|$0$|$1$|$0$|$12$|
|$y$|$\frac{1}{3}$|$1$|$\frac{1}{3}$|$0$|$4$|
|$s_{2}$|$\frac{7}{3}$|$0$|$- \frac{2}{3}$|$1$|$4$|




|Basic|$x$|$y$|$s_{1}$|$s_{2}$|Solution|Ratio|
|-----|-----|-----|-----|-----|-----|-----|
|$z$|$-1$|$0$|$1$|$0$|$12$|$-12$|
|$y$|$\frac{1}{3}$|$1$|$\frac{1}{3}$|$0$|$4$|$12$|
|$s_{2}$|$\frac{7}{3}$|$0$|$- \frac{2}{3}$|$1$|$4$|$\frac{12}{7}$|




|Basic|$x$|$y$|$s_{1}$|$s_{2}$|Solution|Ratio|
|-----|-----|-----|-----|-----|-----|-----|
|$z$|$0$|$0$|$\frac{5}{7}$|$\frac{3}{7}$|$\frac{96}{7}$|
|$y$|$0$|$1$|$\frac{3}{7}$|$- \frac{1}{7}$|$\frac{24}{7}$|
|$x$|$1$|$0$|$- \frac{2}{7}$|$\frac{3}{7}$|$\frac{12}{7}$|



Finally we got a table with all non-negaitve coefficient corresponding to $z$ variable. The solution of this problem is $96/7$ at the point $(12/7, 24/7)$

### Problem 2

Solve the following optimization problem.

$$
\begin{alignat*}{2}
    & \text{maximize: } && z = 2x_1 + x_2 - 3x_3 + 5x_4 \\
    & \text{subject to: } && 
        \begin{aligned}[t]
             x_1 + 2x_2 + 2x_3 + 4x_4  &\leq 40 \\
            2x_1 -  x_2 +  x_3 + 2x_4  &\leq  8 \\
            4x_1 - 2x_2 +  x_3 -  x_4  &\leq 10 \\
                    x_1, x_2, x_3, x_4 &\geq 0 
        \end{aligned}
\end{alignat*}
$$   




$\displaystyle \left[\begin{matrix}-2 & -1 & 3 & -5 & 0 & 0 & 0 & 0\\1 & 2 & 2 & 4 & 1 & 0 & 0 & 40\\2 & -1 & 1 & 2 & 0 & 1 & 0 & 8\\4 & -2 & 1 & -1 & 0 & 0 & 1 & 10\end{matrix}\right]$




|Basic|$x_{1}$|$x_{2}$|$x_{3}$|$x_{4}$|$s_{1}$|$s_{2}$|$s_{3}$|Solution|Ratio|
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|$z$|$-2$|$-1$|$3$|$-5$|$0$|$0$|$0$|$0$|
|$s_{1}$|$1$|$2$|$2$|$4$|$1$|$0$|$0$|$40$|
|$s_{2}$|$2$|$-1$|$1$|$2$|$0$|$1$|$0$|$8$|
|$s_{3}$|$4$|$-2$|$1$|$-1$|$0$|$0$|$1$|$10$|




|Basic|$x_{1}$|$x_{2}$|$x_{3}$|$x_{4}$|$s_{1}$|$s_{2}$|$s_{3}$|Solution|Ratio|
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|$z$|$-2$|$-1$|$3$|$-5$|$0$|$0$|$0$|$0$|$0$|
|$s_{1}$|$1$|$2$|$2$|$4$|$1$|$0$|$0$|$40$|$10$|
|$s_{2}$|$2$|$-1$|$1$|$2$|$0$|$1$|$0$|$8$|$4$|
|$s_{3}$|$4$|$-2$|$1$|$-1$|$0$|$0$|$1$|$10$|$-10$|




|Basic|$x_{1}$|$x_{2}$|$x_{3}$|$x_{4}$|$s_{1}$|$s_{2}$|$s_{3}$|Solution|Ratio|
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|$z$|$3$|$- \frac{7}{2}$|$\frac{11}{2}$|$0$|$0$|$\frac{5}{2}$|$0$|$20$|
|$s_{1}$|$-3$|$4$|$0$|$0$|$1$|$-2$|$0$|$24$|
|$x_{4}$|$1$|$- \frac{1}{2}$|$\frac{1}{2}$|$1$|$0$|$\frac{1}{2}$|$0$|$4$|
|$s_{3}$|$5$|$- \frac{5}{2}$|$\frac{3}{2}$|$0$|$0$|$\frac{1}{2}$|$1$|$14$|




|Basic|$x_{1}$|$x_{2}$|$x_{3}$|$x_{4}$|$s_{1}$|$s_{2}$|$s_{3}$|Solution|Ratio|
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|$z$|$3$|$- \frac{7}{2}$|$\frac{11}{2}$|$0$|$0$|$\frac{5}{2}$|$0$|$20$|$- \frac{40}{7}$|
|$s_{1}$|$-3$|$4$|$0$|$0$|$1$|$-2$|$0$|$24$|$6$|
|$x_{4}$|$1$|$- \frac{1}{2}$|$\frac{1}{2}$|$1$|$0$|$\frac{1}{2}$|$0$|$4$|$-8$|
|$s_{3}$|$5$|$- \frac{5}{2}$|$\frac{3}{2}$|$0$|$0$|$\frac{1}{2}$|$1$|$14$|$- \frac{28}{5}$|




|Basic|$x_{1}$|$x_{2}$|$x_{3}$|$x_{4}$|$s_{1}$|$s_{2}$|$s_{3}$|Solution|Ratio|
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|$z$|$\frac{3}{8}$|$0$|$\frac{11}{2}$|$0$|$\frac{7}{8}$|$\frac{3}{4}$|$0$|$41$|
|$x_{2}$|$- \frac{3}{4}$|$1$|$0$|$0$|$\frac{1}{4}$|$- \frac{1}{2}$|$0$|$6$|
|$x_{4}$|$\frac{5}{8}$|$0$|$\frac{1}{2}$|$1$|$\frac{1}{8}$|$\frac{1}{4}$|$0$|$7$|
|$s_{3}$|$\frac{25}{8}$|$0$|$\frac{3}{2}$|$0$|$\frac{5}{8}$|$- \frac{3}{4}$|$1$|$29$|



Since all the coefficient corresponding to $z$ is non-negative, hence there will be no entering variable. The simplex algorithm will terminate. The objective is $41$ at the point $(0,6,0,7)$.
