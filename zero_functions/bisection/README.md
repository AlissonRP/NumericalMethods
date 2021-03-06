Bisecção
================

# Método da bisecção

Esse método é bastante intuitivo se já soubermos sobre o TVI,
basicamente começamos a busca da raiz em um intervalo \[**a**,**b**\]
pré definido, avaliamos um ponto $f(\theta)$ sendo $\theta$ a média de
**a** e **b**, após calculamos $f(a)*f(\theta)$ temos as seguintes
interpretações

-   Para f crescente temos que
    $f(a)*f(\theta) < 0 \implies f(\theta) > 0$ logo **b** agora toma o
    valor de $\theta$ do contrário $f(\theta) < 0$ então **a** assume o
    valor de theta

``` julia
using Plots

f(x) = x * log(x) - 1

plot(f, 1:5, legend=false)
```

![](README_files/figure-gfm/cell-2-output-1.png)

-   Para f decrescente temos que
    $f(a)*f(\theta) < 0 \implies f(\theta) < 0$ logo **b** agora toma o
    valor de $\theta$ do contrário $f(\theta) > 0$ então **a** assume o
    valor de theta

``` julia
f(x) = x  - 10

plot(f, 1:15, legend=false)
```

![](README_files/figure-gfm/cell-3-output-1.png)

Note que a ideia de crescente/decrescente é somente para a intuição pois
se $f(\theta)=0$ paramos o método, do contrário $f(a)$ e $f(\theta)$
possuem sinais diferentes, então a raiz está no intervalo \[a,
$\theta$\] e assim tomamos **b** $= \theta$ do contrário a raiz está no
intervalo \[$\theta$, b\] e tomamos **a** $= \theta$ e assim repetimos
até algum critério de parada.
