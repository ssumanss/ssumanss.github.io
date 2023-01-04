# Cauchy integral formula
**Thm:** Let $\Gamma$ be a simple closed positively  oriented contour. If $f$ is analytic in some simply connected domain $D$ contain $\Gamma$, and $z_0$ is any point inside $\Gamma$, then
$$f(z_0)= \frac{ 1 }{2\pi i }\int _\Gamma  \frac{ f(z) }{ z-z_0 }dz $$

**Proof:** For sufficiently  small $r>0$, $\gamma :\vert z-z_0 \vert =r,$ positively oriented lies inside $\Gamma,$ then by deformation theorem, we have

$$\int _\Gamma  \frac{ f(z) }{ z-z_0 }=\int_\gamma \frac{ f(z) }{ z-z_0 }dz $$

Now,

$$
\begin{align}
\int _\gamma \frac{ f(z) }{ z-z_0 } dz
&=\int _\gamma \frac{f(z)-f(z_0) + f(z_0)}{ z-z_0 } dz \\
&=\int _\gamma \frac{ f(z) }{ z-z_0 }dz+ \int_\gamma \frac{f(z)-f(z_0) }{ z-z_0 } dz \\
&= f(z_0) \cdot 2\pi i + \int _\gamma \frac{ f(z)-f(z_0) }{ z-z_0 }dz
\end{align}
$$

In order to find the second integral, consider the following expression,

$$\left \vert \frac{ f(z)-f(z_0 ) }{ z-z_0  } \right \vert = \frac{ \vert f(z)-f(z_0 )\vert}{ r }\leq \frac{ M_r }{ r } $$

Using the above inequality, the integral will be

$$\require{cancel}
\begin{align}
\left \vert \int_\gamma \frac{ f(z)-f(z_0 ) }{ z-z_0  } \right \vert
&\leq \frac{ M_r }{ r } \int_\gamma \vert dz \vert \\
&= \frac{ M_r }{ r } \ell(\gamma) \\
&= \frac{ M_r }{ \cancel{r} }\cdot 2\pi \cancel{r} \\
&= 2\pi \cdot M_r
\end{align}
$$

But $f$ is continuous at $z_0$, hence taking the limit $r\to 0$, we get

$$\lim_{r \to 0} \vert f(z) - f(z_0) \vert = \lim_{r \to 0} M_r = 0,$$

By deformation we can make this $r$ arbitralily small, hence taking the limit $r\to 0$, we have

$$\require{cancel}
\begin{align}
\lim_{r\to 0}\left \vert \int_\gamma \frac{ f(z)-f(z_0 ) }{ z-z_0  } \right \vert
&\leq \lim_{r\to 0} 2\pi M_r = 0
\end{align}
$$

Hence the given integral will be,

$$
\begin{align}
\int _\Gamma \frac{ f(z) }{ z-z_0 } dz
&= f(z_0) \cdot 2\pi i \\
f(z_0) &= \frac{ 1 }{ 2\pi i } \int _\Gamma \frac{ f(z) }{ z-z_0 } dz
\end{align}
$$



Credits: Pinku Kumar
