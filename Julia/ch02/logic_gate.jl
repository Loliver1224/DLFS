using Test

function AND(x1, x2)
    x = [x1, x2]
    w = [0.5, 0.5]
    b = -0.7
    tmp = sum(w.*x) + b
    return tmp > 0
end

function NAND(x1, x2)
    x = [x1, x2]
    w = [-0.5, -0.5]
    b = 0.7
    tmp = sum(w.*x) + b
    return tmp > 0
end

function OR(x1, x2)
    x = [x1, x2]
    w = [0.5, 0.5]
    b = -0.2
    tmp = sum(w.*x) + b
    return tmp > 0
end

function XOR(x1, x2)
    s1 = NAND(x1, x2)
    s2 = OR(x1, x2)
    y = AND(s1, s2)
    return y
end

function main()
    @testset "Test" begin
        @testset "AND" begin
            @test AND(0, 0) == 0
            @test AND(0, 1) == 0
            @test AND(1, 0) == 0
            @test AND(1, 1) == 1
        end
        @testset "NAND" begin
            @test NAND(0, 0) == 1
            @test NAND(0, 1) == 1
            @test NAND(1, 0) == 1
            @test NAND(1, 1) == 0
        end
        @testset "OR" begin
            @test OR(0, 0) == 0
            @test OR(0, 1) == 1
            @test OR(1, 0) == 1
            @test OR(1, 1) == 1
        end
        @testset "XOR" begin
            @test XOR(0, 0) == 0
            @test XOR(0, 1) == 1
            @test XOR(1, 0) == 1
            @test XOR(1, 1) == 0
        end
    end
end

main()
