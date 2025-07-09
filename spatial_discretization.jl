function horizontal_derivative!(dxdu, u, dx)
    n = length(u)
    for i in 1:n
        if i == 1
            dxdu[i] = (u[i+1] - u[i]) / dx
        elseif i == n
            dxdu[i] = (u[i] - u[i-1]) / dx
        else
            dxdu[i] = (u[i+1] - u[i-1]) / (2 * dx)
        end
    end
    nothing
end
# TODO: add vertical derivative
