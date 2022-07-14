using Plots
f(x) = 5 - x^2




plot(f, -10:10, legend=false)


fixed_point = function (x0::Real, f::Function, n::Int)
    x = [Float64(x0)]
    for i in 1:n
        append!(x, f(x[i]))
    end
    return x |> plot
end

fixed_point(1.5, f, 10)
plot!(1:10)




