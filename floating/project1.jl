#Machine accuracy: Machine accuracy is defined as the smallest
#positive number in floating point arithmetic,
#such that (1+ϵ) > 1
.



accuracy = function (val::Real)
    a = 1
    s = a + val
    while s > val
        a = a / 2
        s = val + a
    end
    return (2a)
end




accuracy(3)

accuracy(15)



