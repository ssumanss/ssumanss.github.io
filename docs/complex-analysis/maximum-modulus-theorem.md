# Maximum Modulus Theorem

This is a celebrated results in complex analysis, it says that the maximum of non-constant analytics function occur on the boundary of a domain.

!!! success "Maximum Modulus Theorem"
    Let $f$ is analytic in a connected domain $\Omega$, then the maximum value of $\vert f(z) \vert$ occur on the boundary of the domain, i.e., $\partial \Omega$.

**Proof:** In order to prove this theorem first we will prove this result for a disc stated as follows

!!! success "Local Mean Value Theorem"
    If $f$ is analytic on a disc of radius $r$ with centre $a$, such that $\vert f(a) \vert \geq \vert f(z) \vert$, for all $z$ in the disc, then $f$ is constant on the disc.

## Schwartz Lemma

!!! success "Schwartz Lemma"    
    Let $\bf{D}$ be the unit disc and $f: \bf{D}\to \bf{D}$ is analytic function then,

    1. $\vert f(z) \vert \leq \vert z \vert$ , for all $z \in \bf{D}$
    2. $\vert f'(0) \vert \leq 1$
    3. if there exist a $z_0\in \bf{D}$, such that $\vert f(z_0) \vert = \vert z_0 \vert$ or  $\vert f'(0) = 1$, then $f$ is a rotation.
