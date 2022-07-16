Método de newton
================

Pelo estudo da convergência no método do ponto fixo vimos que a
velocidade de convergência era acelerada quanto menor fosse
$|\varphi'(x)|$, assim o que o método de Newton faz é tentar justamente
encontrar $\varphi$ tal que $\varphi(\theta) = 0$.  
Precisamos primeiro relembrar a expansão em série de taylor de uma
função $g$ “infinitamente” derivável em um intervalo contendo $x_0$:

$$
g(x)=\sum_{n=0}^{\infty}\bigg(\dfrac{f^{n}(x_0)(x - x_0)^{n}}{n!}\bigg)
$$

Podemos aproximar g tanto que se queira ($n \rightarrow \infty$)

Assim sabendo que $f(\theta) = 0$ vamos aproximar $f(\theta)$ por uma
série de taylor de ordem 2, então supondo $f''$ contínua em um intervalo
\[a,b\] tal qual $\theta$ está contido, suponha também $f'(\theta) = 0$
e $|\hat{x} - \theta|$ é “pequeno”

$$
f(x) =  f(\bar{x}) + f'(x)(x - \bar{x}) + f''(x)\dfrac{(x - \bar{x})^2}{2!}
$$

Agora como $f(\theta)=0$, temos

$$
0 =  f(\bar{x}) + f'(\bar{x})(\theta - \bar{x}) + f''(\bar{x})\dfrac{(\theta - \bar{x})^2}{2!}
$$

Por hipótese $\bar{x}- \theta$ é “pequeno”, assim resta

$$
f(\bar{x}) + f'(\bar{x})(\theta - \bar{x}) \approx 0 \implies \theta \approx \bar{x} - \dfrac{f(\bar{x})}{f'(\bar{x})}
$$

Assim começamos com um chute inicial $x_0$ e geramos a seguinte
sequência

$$
x_{k+1} = x_k  - \dfrac{f(x_k)}{f'(\bar{x}_k)}
$$

Portanto existe a relação com o método do ponto fixo, onde
$A(x) =\dfrac{1}{f'(\bar{x}_k)}$
