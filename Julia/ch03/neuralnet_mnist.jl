using MLDatasets, JLD

function sigmoid(x)
    return 1 / (1 + exp(-x))
end

function softmax(a)
    c = maximum(a)
    exp_a = exp.(a .- c)  # オーバーフロー対策
    sum_exp_a = sum(exp_a)
    y = exp_a ./ sum_exp_a

    return y
end

function get_data()
    # x_train, t_train = MNIST.traindata()
    x_test, t_test = MNIST.testdata()
    x_test = reshape(x_test, (784, :))
    return x_test, t_test
end

function init_network()
    network = load("sample_weight.jld")
    return network
end

function predict(network, x)
    W1, W2, W3 = network["W1"], network["W2"], network["W3"]
    b1, b2, b3 = network["b1"], network["b2"], network["b3"]

    a1 = W1 * x .+ b1
    z1 = sigmoid.(a1)
    a2 = W2 * z1 .+ b2
    z2 = sigmoid.(a2)
    a3 = W3 * z2 .+ b3
    y = softmax(a3)

    return y
end

function main()
    x, t = get_data()
    network = init_network()

    accuracy_cnt = 0
    for i in 1:length(t)
        y = predict(network, x[:,i])
        p = argmax(y) - 1
        if p == t[i]
            accuracy_cnt += 1
        end
    end
    accuracy = accuracy_cnt / length(t)
    println("Accuracy: $accuracy")  # 0.9352
end

main()
