# Power Series

A series of the form of  
$$ f(z) = \sum_{n=0}^\infty a_n (z-a)^n \quad a_n \in \mathbb{C}$$
is called a power series. Here, $a$ is called the center of the power series.

## Radius of Convergence

!!! abstract "Definition"
    For any power series there exist a real number $R\geq 0$, such that, the given power series converges in open disc of radius $R$, i.e., $\vert z - a \vert < R$, while diverges for all $z$ outside the closed disc of radius $R$, i.e., $\vert z - a \vert > R$. Such $R$ is called the radius of convergence the given power series.


!!! fail "Warning"
    At the circle of convergence, i.e., at $\vert z - a\vert = R$, the power series can converge for some $z$ or diverge for some other points. For example consider the power series,
    $$ f(z) = \sum_{n=0}^\infty \dfrac{z^n}{n}, $$
    the radius of convergence will be $1$. It diverge for $z=1$ but converge for $z=-1$, both lie on the circle of convergence.

## Method of finding Radius of Convergence
Two theorem from real analysis usualy used to find the radius of convergence as mentioned below.

!!! tip "Ratio Test"
    For the power series $\sum_{n=0}^\infty a_n (z-a)^n$, consider the followin limit exist,
    $$ L = \lim_{n\to \infty}\left \vert \dfrac{a_n}{a_{n+1}}\right\vert.$$
    Then
    <ol>
      <li>If $L < 1$, then the series absolutely converges.</li>
      <li>If $L > 1$, then the series diverges.</li>
      <li>If $L = 1$, then the series is either divergent or convergen</li>
    </ol>
    Hence, the radius of convergence will be $R = 1/L$.

!!! tip "Root Test/Cauchy Hadamard Test"
    For the power series $\sum_{n=0}^\infty a_n (z-a)^n$, the radius of converge is given by
    $$\dfrac{1}{R} = \limsup_{n\to \infty} \left\vert a_n \right \vert ^{\dfrac{1}{n}}$$
