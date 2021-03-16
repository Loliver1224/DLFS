using Plots

function step_func(x)
    return x > 0
end

function sigmoid(x)
    return 1 / (1 + exp(-x))
end

function relu(x)
    return max(0, x)
end

function identity_func(x)
    return x
end

function softmax(a)
    c = maximum(a)
    exp_a = exp.(a .- c)  # オーバーフロー対策
    sum_exp_a = sum(exp_a)
    y = exp_a ./ sum_exp_a

    return y
end

function init_network()
    network = Dict(
        "W1" => [0.1 0.3 0.5; 0.2 0.4 0.6],
        "b1" => [0.1 0.2 0.3],
        "W2" => [0.1 0.4; 0.2 0.5; 0.3 0.6],
        "b2" => [0.1 0.2],
        "W3" => [0.1 0.3; 0.2 0.4],
        "b3" => [0.1 0.2]
    )
end

function forward(network, x)
    W1, W2, W3 = network["W1"], network["W2"], network["W3"]
    b1, b2, b3 = network["b1"], network["b2"], network["b3"]

    a1 = x * W1 .+ b1
    z1 = sigmoid.(a1)
    a2 = z1 * W2 .+ b2
    z2 = sigmoid.(a2)
    a3 = z2 * W3 .+ b3
    y = identity_func.(a3)

    return y
end

function main()
    network = init_network()
    x = [1.0 0.5]
    y = forward(network, x)
    println(y)
end

function activationFuncTest()
    x = -5.0:0.1:5.0
    y1 = step_func.(x)
    plot(x, y1)
    y2 = sigmoid.(x)
    plot!(x, y2)

    y3 = relu.(x)
    plot(x, y3)

    a = [0.3 2.9 4.0]
    y4 = softmax(a)
    println(y4)
    println(sum(y4))

end

# activationFuncTest()
main()
