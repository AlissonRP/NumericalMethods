Ordem de convergência
================

Uma sequência ${x_k}$ que converge para $\theta$ diz ter ordem de
convergência $\alpha$ se existe $M>0$ tal que

$$
\lim_{n \rightarrow \infty} \dfrac{|x_{n+1} - \theta|}{{|x_n - \theta|}^{\alpha}} = M
$$

No contexto de métodos numéricos escrevemos $e_n = x_n - \theta$, assim
podemos reescrever como

$$
\lim_{n \rightarrow \infty} \dfrac{ |e_{n+1}| }{ {|e_n|}^{\alpha} } = M
$$

Então para $n$ “grande”

$$
e_{n+1} \approx M{e_n}^{\alpha}
$$

Portanto o que $\alpha$ indica é quão rápido $x_n$ está convergindo para
$\theta$, pois por exemplo suponha que $M=1$ e $|e_n| < 10^{-3}$, para
$q=2$ tem-se que $|e_{n+1}|<10^{-6}$, ou seja o erro em $e_{n+1}$ decaí
muito.

Vamos agora calcular a ordem de convergência para alguns método já
desenvolvidos: Podemos usar novamente a expansão em série de taylor de
ordem 2, sabendo que $f(\theta)= 0$, $\varphi(\theta)=\theta$ e
$|e_k| = |x_k - \theta|$

### Método da bisecção

Sabemos que $e_{n+1} = \dfrac{1}{2}e_n$ logo $\alpha=1$

### Método de newton

Usando a expansão em série de taylor

$$
x_{n+1} =  f(\theta) + f'(\theta)e_n + f''(\theta)\dfrac{(e_{n})^2}{2!}
$$

Sabendo que $g'(x)= 0$ temos que
$e_{k+1} = f''(\theta)\dfrac{(e_{n})^2}{2!}$, portanto $\alpha=2$

### Método da secante

Existe uma maneira de encontrar “analiticamente” porém vamos encontrar
numericamente

Podemos manipular a expressão do $e_{n+1}$ e isolar $\alpha$

$$
\alpha = \dfrac{\log\bigg(\bigg\lvert\dfrac{e_{n+1}}{e_n}\bigg\rvert\bigg)}{\log\bigg(\bigg\lvert\dfrac{e_{n}}{e_{n-1}}\bigg\rvert\bigg)}
$$
