import ForwardDiff: Dual, value, partials
using LambertW

function LambertW.lambertw(d::Dual{T}) where {T}
    x = value(d)
    @assert x ≥ 0
    f = lambertw(x)
    if x > 0
        g = lambertw(x) / x / (1 + lambertw(x))
    else
        g = one(x)
    end
    Dual{T}(f, g * partials(d))
end
