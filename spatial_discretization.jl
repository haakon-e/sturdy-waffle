function horizontal_derivative!(dxdu, u, dx; boundary_condition = :periodic)
    n = length(u)
    for i in 1:n
        if boundary_condition == :periodic
            im1 = i == 1 ? n : i - 1
            ip1 = i == n ? 1 : i + 1
            dxdu[i] = (u[ip1] - u[im1]) / (2 * dx)
        else
            if i == 1
                dxdu[i] = (u[i+1] - u[i]) / dx
            elseif i == n
                dxdu[i] = (u[i] - u[i-1]) / dx
            else
                dxdu[i] = (u[i+1] - u[i-1]) / (2 * dx)
            end
        end
    end
    nothing
end
# TODO: add vertical derivative
