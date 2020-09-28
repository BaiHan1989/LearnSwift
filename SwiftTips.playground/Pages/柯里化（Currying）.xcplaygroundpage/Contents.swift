

func addOne(num: Int) -> Int {
    return num + 1
}

/// 传入要加的数值，返回一个函数（闭包表达式）
func addTo(_ adder: Int) -> (Int) -> Int {
    return {
        num in
        return adder + num
    }
}

let addTwo = addTo(2)

let result = addTwo(10)


///
func greaterThan(_ compare: Int) -> (Int) -> Bool {
    return {
        $0 > compare
    }
}

let greaterThanTen = greaterThan(10)

greaterThanTen(20)
greaterThanTen(9)


