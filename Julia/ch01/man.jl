mutable struct Man
    name::String

    println("Initialized!")
end

function hello(self::Man)
    println("Hello ", self.name, "!")
end

function goodbye(self::Man)
    println("Good-bye ", self.name, "!")
end

function main()
    m = Man("David")
    hello(m)
    goodbye(m)
end

main()
