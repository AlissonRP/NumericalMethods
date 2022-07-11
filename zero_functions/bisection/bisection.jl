using Plots
f(x) = x * log(x) - 1

"""
    bisection(g, a, b, error)

    g function to find the zero
    a begin of interval
    b end of interval
    error is the ERROR!
"""
bisection = function (g::Function, a::Real, b::Real; error::Real = 0.001)
    θ = (a + b) / 2
    n = 0
    while abs(g(θ)) > error && n < 500
        θ = (a + b) / 2
        if g(a) * g(θ) < 0
            b = θ
        else
            a = θ
        end
        n += 1
    end
    return a, b, θ, n, g(θ) 
end
        

f(x) = - 
bisection(f, 5, 12)


plot(f, 0:20)
