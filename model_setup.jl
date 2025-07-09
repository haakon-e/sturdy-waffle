function model_setup(config)
    dx = config["dx"]
    u = zeros(config["nx"])
    dudx = similar(u)
    horizontal_derivative!(dudx, u, dx)
    (; dx, u, dudx)
end
