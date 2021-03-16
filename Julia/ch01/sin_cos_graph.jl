using Plots

function main()
    x = 0:0.1:6
    y1 = sin.(x)
    y2 = cos.(x)

    plot(
        x, y1,
        title = "sin & cos",
        label = "sin",
        xlabel = "x",
        ylabel = "y"
    )
    plot!(
        x, y2,
        line = :dash,
        label = "cos"
    )
end

main()
