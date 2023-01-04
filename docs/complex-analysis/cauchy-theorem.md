# Cauchy Theorem

## Simply connectd domain

**Def:** A domain $D\subseteq \mathbb{ C }$ is simply connected if $D$ has no holes $ \Leftrightarrow C \setminus D$ is connected.

A domain that is not simply connected  is called  multiply connected.

!!! success "Cauchy Theorem"
      Let $D \subseteq C$ be  simply connected domain and $f:D\to  \mathbb{ C } $  is any analytic  function .Then for any closed  contour $\gamma$ in $D$ , We have
      $$\int_\gamma f(z) dz=0$$

**Proof:** Let  $f(z)= u(x,y) + iv(x,y)$ and the contour
$$
\begin{align}
\gamma(t) &= x(t) + i y(t);& t\in [a,b]\\
\gamma'(t) &= x'(t) + i y'(t)&
\end{align}
$$

Now the integration will be

$$
\require{cancel}
\begin{align}
\int_\gamma f(z) dz &= \int_a^b f(\gamma(t))\gamma'(t)dt \\
                    &= \int_a^b (u(x,y) + iv(x,y)) (x' + iy') dt\\
                    &= \int_a^b (ux'-vy') dt + i\int_a^b(vx'+uy') dt \\
                    &= \oint_\gamma udx - vdy  + i \oint_\gamma vdx  +udy
\end{align}
$$
Now usign green theorem, we get the follwoing integral as

$$
\begin{align}
\phantom{\int_\gamma f(z) dz} &=  \iint\limits_{R}(-v_x - u_y)dy dx  +\iint\limits_{R}(u_x - v_y) dy dx
\end{align}
$$

Since $f$ is analytic, hence it will satisfy the CR-equation, $i.e.,$ $u_x=v_y$ and $v_x=-u_y$

$$
\begin{align}
\phantom{\int_\gamma f(z) dz} &= \iint\limits_{R}\cancelto{0}{(-v_x - u_y)}dy dx  +\iint\limits_{R}\cancelto{0}{(u_x - v_y)} dy dx\\
                    &= 0.
\end{align}
$$

**Ex:** Find the following integration

   1. $\displaystyle \int_{\vert z \vert = 2}\frac{ e^z }{ z^2-9 }dz$,
   2. $\displaystyle \int_{\vert z \vert = 2}\frac{ 2z+1 }{ e^z }dz$.

Here we have to evaluate the integral on a circle of radius $2$, centerd at $0$.

For (1), the function $\displaystyle f(z) = \frac{ e^z }{ z^2-9 }$ is analytic in entire complex plane except $z=\pm 3$, but these points are outside the contour, hence by Cauchy theorem, the integration will be $0$.

For (2), the function $\displaystyle f(z) = \frac{ 2z+1 }{ e^z }$ is analytic in entire complex plane, hence by Cauchy theorem, the integration will be $0$.

**Note:** A function of the form of $f/g$ is analytic everywhere except $g=0$, provided $f$ and $g$ are analytic.

Credits: Pinku Kumar
