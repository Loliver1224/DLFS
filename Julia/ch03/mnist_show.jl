using MLDatasets, Images

x_train, t_train = MNIST.traindata()
x_test, t_test = MNIST.testdata()

println(size(x_train))
println(size(t_train))
println(size(x_test))
println(size(t_test))

Gray.(x_train[:, :, 1]')  # 何故、そこで転置
