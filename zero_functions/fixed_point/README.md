Método do ponto fixo
================

Método que serve mais para fundamentar conceitos importantes, esses que
são fundamentais para métodos que possuem melhor “desempenho”. Queremos
encontrar $\theta$ tal que $f(\theta)=0$, podemos escrever a equação
anterior de tal maneira que fique $x=\varphi(x)$, assim ao invés de
encontrarmos $\theta$ para $f$ encontramos $\theta=\varphi(\theta)$, e
que pelo seguinte teorema vemos que é suficiente e necessário.

## Teorema 1

$f(\theta)=0 \leftrightarrow \theta = \varphi(\theta)$

Vamos começar mostrando que $f(\theta)=0$ implica em
$\theta = \varphi(\theta)$. Primeiro vamos começar notando que
$\varphi(x)$ pode ser escrita como $\varphi(x) = x + A(x)f(x)$ com
$A(\theta) \ne 0$, por hora aceite a existência de $A(x)$, pois na
demonstração ficará claro. A demonstração da ida é muita simples usando
a definição de $\varphi$, para a volta temos que
$\varphi(\theta) = \theta$, como o termo $A(\theta)f(\theta)$ foi
zerado, existe três opções:

-   $A(\theta)$ é zero;  
-   $f(\theta)$ é zero;  
-   Ambas as funções possuem $\theta$ como raiz. Mas por hipótese
    $A(\theta) \ne 0$, portanto restando somente $f(\theta)=\theta$.
    Portanto a existência de A(x) implica a existência de infinitas
    maneiras de escrever $\varphi$.

$\varphi$ é dita uma equação de iteração, pois é computada usando
$x_{k+1} = \varphi(x_k)$, note portanto que o método precisa de um ponto
inicial $x_0$.

Dado o fato que existe infinitas $\varphi$, como escolher uma? Todas
convergem para $\theta$?, infelizmente a resposta para segunda pergunta
é **não**.

O seguinte teorema garante a convergência para $\theta$ dado algumas
hipóteses

## Teorema 2

Se supormos que $\theta$ está centrado em um intervalo *I* e se for
satisfeita as seguintes hipóteses, então a sequência $x_j$ gerada por
$x_{k+1} = \varphi(x_k)$ converge para $\theta$

-   $\varphi(x)$ e $\varphi'(x)$ são contínuas em I,
-   $|\varphi'(x)| \leq M < 1 \forall x \in I$
-   $x_0 \in I$

Para demonstrar esse teorema precisamos relembrar do teorema do valor
médio (TVM):  
**TVM**: Seja $f$ uma função contínua em um intervalo **fechado**
\[a,b\] e diferenciável em (a,b), existe um ponto $c$ tal que:

$$f'(c)=\dfrac{f(b)-f(a)}{b-a}$$
