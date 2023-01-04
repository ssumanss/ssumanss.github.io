# Complex valued function of real variable

Let $f:I \subseteq \mathbb{R} \to \mathbb{C}$, such that, $f\in \mathcal{C}^1$, then
$$f(x)=g(x) + ih(x)\quad
x\in\mathbb{R}$$

**Ex:** $f(t) = e^{it}$,   $t\in\mathbb{R}$

**Ex:** $f(t)= (t+1) +(3t-1)i$
**Ex:** $f(t)=t^2 + t^3 i$

## Differentiation

Differentiation of such function is done term by term as follows
$$f'(t)=g'(t) + ih'(t) $$

**Ex:**

\begin{align}
f(t)  &=  e^{it}    &=&  \cos t + i \cdot \sin t       \\
f'(t) &=  ie^{it}   &=& -\sin t + i \cos t             \\
                   &&=& i(\cos t + i \cdot \sin t)    \\
                   &&=& ie^{it}    \\
\end{align}

We can see that, both ways we got the same anser.

## Integration

Integration of such function is done term by term as follows,
$$ \int f(t) = \int g(t) dt + i \int h(t) dt $$

**Ex:**

\begin{align}
f(t) &= t^2 + it^3 \\
\int f(t) dt &= \int t^2 dt + i \int t^3 dt \\
             &= \frac{ t^3 }{ 3 } + i \frac{ t^4 }{ 4 } + C
\end{align}

## Legth

The length of the curve is conputed as the following formula

\begin{align}
(ds)^2 &= (dx)^2 + (dy)^2\\
ds     &= \sqrt{(dx)^2 + (dy)^2} \\
       &= \sqrt{ 1 + \left(\frac{ dy }{ dx }\right)^2} dx\\
\end{align}

Integrating we get length of the curve as
$$ \int_a^b ds=\int_a^b\sqrt{ 1 + \left(\frac{ dy }{ dx }\right)^2}dx$$

Credits: Pinku Kumar, Pranav Kumar
