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
    println("AND test")
    testAND = [(0, 0, 0), (1, 0, 0), (0, 1, 0), (1, 1, 1)]
    test(AND, testAND)

    println("NAND test")
    testNAND = [(0, 0, 1), (1, 0, 1), (0, 1, 1), (1, 1, 0)]
    test(NAND, testNAND)

    println("OR test")
    testOR = [(0, 0, 0), (1, 0, 1), (0, 1, 1), (1, 1, 1)]
    test(OR, testOR)

    println("XOR test")
    testXOR = [(0, 0, 0), (1, 0, 1), (0, 1, 1), (1, 1, 0)]
    test(XOR, testXOR)
end

function test(f, cases)
    cnt_error = 0
    for (x1, x2, want) in cases
        res = f(x1, x2)
        if res == want
            println("-- PASS")
        else
            print("-- FAIL -- return $res but want = $want")
            cnt_error += 1
        end
    end
    if cnt_error == 0
        println("ok")
    else
        println("failed in $cnt_error cases")
    end
end

main()
