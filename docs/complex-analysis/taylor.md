# Taylor's Theorem

This thorem says that any analytic function in a circular domain has a power series expansion.

!!! success "Taylor's Thorem"
     Let $\Omega$ be an open connected set and let $a\in \Omega$. Let $f:\Omega→\mathbb{C}$ be analytic on $\Omega$. Then there exists an $r>0$ such that
     $$f(z)=\sum_{n=0}^\infty \dfrac{f^{(n)}(a)}{n!}(z−a)^n; \quad z ∈ D(a,r).$$
     In other words, the Taylor series of $f$ at $a$ converges uniformly and absolutely to $f$ for all $z∈D(a,r)$.


```python
print("Hello World!")
```

``` mermaid
sequenceDiagram
  autonumber
  Alice->>John: Hello John, how are you?
  loop Healthcheck
      John->>John: Fight against hypochondria
  end
  Note right of John: Rational thoughts!
  John-->>Alice: Great!
  John->>Bob: How about you?
  Bob-->>John: Jolly good!
```
