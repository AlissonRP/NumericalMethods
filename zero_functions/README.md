Optimização não Linear
================

## O problema de $f(x)=0$

Frequentemente estamos interessados em encontrar o valor de
$\hat{\theta}$ tal qual a função $f_\theta$ é maximizada, sabemos que
tal ponto satisfaz:

$$\frac{df_\theta}{d\theta}(\hat{\theta})=0$$

Assim caímos no problema de encontrar o(s) valor(es) que são zeros da
derivada de $f_\theta$.  
Infelizmente muita das funções do mundo real não tem solução analítica
para tal problema, faz-se então a necessidade de meios para contornar
essa dificuldade, e é esse objeto de estudo dessa seção.

## Idéias relevantes

Vamos precisar usar aqui o bom e velho teorema do valor intermediário
(TVI)

**TVI**: Seja $f$ uma função contínua no intervalo $[a,b]$, se
$f(a)f(b) < 0$ então existe ao menos um elemento $\theta$ nesse
intervalo tal qual é raiz de $f$
<p align="center">
<img align="center" src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Illustration_for_the_intermediate_value_theorem.svg/1200px-Illustration_for_the_intermediate_value_theorem.svg.png" height="310px" width="690"/>
</p>

Um ponto fundamental é que se a derivada de $f$ for monótona em $[a,b]$
então $\theta$ é único.  
Mas como encontrar o intervalo $[a,b]$? Uma maneira é plotando o gráfico
da função que você tem interesse, como exemplo suponha que queremos
encontrar o máximo de
$f(\theta; x_i) = n\log(\theta) - \theta\sum_i(x_i)$ onde $n$ é a
dimensão do vetor $x_i$, o seguinte gráfico plota $f$ para $\theta$ no
intervalo \[1,30\]

![](README_files/figure-gfm/cell-2-output-1.png)

Notamos portanto que o máximo está entre 10 e 20  
\## Métodos

Estudaremos vários métodos iterativos para encontrar raízes de funções,
métodos consistem em sequência de ações algumas das quais são repetidas
em ciclos, cada ciclo define uma iteração. Devemos estudar uma maneira
de **parada** do método.

## Métodos de parada

Seja $f_\theta(x_0) =0$ suponha $\hat{\theta}$ uma aproximação para
$x_0$, podemos ter as seguintes maneiras de parada.

1 - $|\hat{\theta} - x_0| < \epsilon$

2 - $|f_\theta(\hat{\theta})| < \epsilon$

O problema em 1 é que não sabemos o valor de $x_0$ (se soubéssemos nem
precisaríamos estar fazendo isso não é mesmo?), uma maneira de contornar
o problema é reduzir o intervalo que contém $x_0$ de alguma maneira tal
que

-   $x_0 \in [a,b]$ e $b - a < \epsilon$

Com essas duas restrições, sabemos que para qualquer $x \in [a ,b]$
tem-se $|x - x_0| < \epsilon$ pois por hipótese $x_0$ está \[a,b\],
assim com as restrições aceitas qualquer x em \[a,b\] pode ser tomado
como aproximação para $x_0$.

Os métodos numéricos aqui estudados são desenvolvidos de forma a
satisfazer pelo menos um dos critérios citados anteriormente. Vale
ressaltar que computacionalmente deve se também colocar um método de
parada com restrição no número de iterações, para não cairmos em loops
infinitos.

[Bisecção](bisection/)

[Ponto fixo](fixed_point/)

[Newton](newton/)
