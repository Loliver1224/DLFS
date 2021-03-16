using Plots

function main()
    x = 0:0.1:6
    y = sin.(x)

    plot(x, y)
end

main()
