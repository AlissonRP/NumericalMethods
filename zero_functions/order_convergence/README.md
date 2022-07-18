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

Podemos manipular essa expressão e isolar $\alpha$

$$
\alpha = \dfrac{\log\bigg(\bigg|\dfrac{e_{n+1}}{e_n}\bigg|\bigg)}{\log\bigg(\bigg|\dfrac{e_{n}}{e_{n-1}}\bigg|\bigg)}
$$

Vamos agora calcular a ordem de convergência para alguns método já
desenvolvidos: Podemos usar novamente a expansão em série de taylor de
ordem 2, sabendo que $f(\theta)= 0$, $\varphi(\theta)=\theta$ e
$|e_k| = |x_k - \theta|$

\$\$

\$\$

### Método do fixo