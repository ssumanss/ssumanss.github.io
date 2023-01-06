Find the maxima of the following function

$$f(x,y)=x^4 −x^2y+y^2 −3y+4$$

### Step I

Defining variable and function.

```python
x, y = sp.var('x,y',real=True);
f = x**4 - x**2*y + y**2 - 3*y +4
f
```




$\displaystyle x^{4} - x^{2} y + y^{2} - 3 y + 4$



### Step II

Finding gradiant of the function. 

```python
gradf = [sp.diff(f,c) for c in [x,y]] # gradient of Lagrangian w.r.t. (x,y)
```


$\displaystyle 4 x^{3} - 2 x y$



$\displaystyle - x^{2} + 2 y - 3$


### Step III

Finding the criticlal points by setting the gradient equal to $0$. Critical points is obtained using

```python
stationary_points = sp.solve(gradf, [x, y], dict=True) # solve the KKT equations
stationary_points 
```


|$x$|$y$|Obj|
|---|---|---|
|$-1$|$2$|$1$|
|$0$|$\frac{3}{2}$|$\frac{7}{4}$|
|$1$|$2$|$1$|



### Step IV

Computing the sign of the Hessian at each of the critical points. The Hessian is computed as

```python
H = sp.hessian(f, (x,y))
H
```




$\displaystyle \left[\begin{matrix}12 x^{2} - 2 y & - 2 x\\- 2 x & 2\end{matrix}\right]$



The Eigenvalues of Hessina Matrix will determine weather a point is maxima or minima

```python
def sign(A):
    d = A.eigenvals().keys()
    if any(x >= 0 for x in d):
        if any(x <= 0 for x in d):
            return "None"
        else:
            return "Minima"
    else:
        return "Maxima"
```


|$x$|$y$|Obj|Hessian|
|---|---|---|------|
|$-1$|$2$|$1$|Minima|
|$0$|$\frac{3}{2}$|$\frac{7}{4}$|None|
|$1$|$2$|$1$|Minima|



**Conclusion:** The points $(-1,2)$ and $(1,2)$ are the local minima(which is also global) of the given function.
