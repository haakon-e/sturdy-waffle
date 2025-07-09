function model_run(config)
    dx, u, dudx = model_setup(config)
    dt = config["dt"]
    for i in 1:config["nt"]
        horizontal_derivative!(dudx, u, dx)
        @. u += dt * dudx * u
    end
    return u
end
