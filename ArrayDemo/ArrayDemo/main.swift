//
//  main.swift
//  ArrayDemo
//
//  Created by 白晗 on 2020/9/28.
//

import Foundation

// Swift 学习笔记 - Array高阶函数的使用
// Swift 的高阶函数有filter、map、reduce 这三个高阶函数和JavaScript的filter、map、reduce使用方法时一致的
// 如果你学会了JavaScript中这三个高阶函数的使用，Swift版本也非常好理解了，无非就是语法不一样
// Swift 关于数组

//let array = [1, 2, 3, 4]

// filter 作用：过滤，将数组中的元素按照一定的条件进行过滤 返回过滤后新数组
// 传入函数/闭包表达式
// 该函数/闭包表达式会执行n次，n代表数组中元素个数
// 该函数/闭包表达式 必须返回Bool类型
// 该函数/闭包表达式 接收一个参数，该参数就是每次遍历的数组中元素
// 如果函数/闭包表达式返回值是true 就把该元素放入新的数组
// 如果函数/闭包表达式返回值是false 该元素就会被过滤掉
//let newArray = array.filter { (n) -> Bool in
//    return n % 2 == 0
//}

// 简写
//let newArray = array.filter { $0 % 2 == 0 }
//print(newArray)

/**
 map 作用：将数组中元素进行映射处理，返回处理过后的新数组
 传入函数/闭包表达式
 该函数/闭包表达式会执行n次，n代表数组中元素个数
 该函数/闭包表达式接收一个参数，该参数就是每次遍历的数组元素
 该函数/闭包表达式返回处理后的内容，将处理后的内容添加到新的数组中（映射操作）
 */
//let newArray = array.map { n in
//    return n * 2
//}
//print(newArray)

//let newArray = array.map { $0 * 2 }
//print(newArray)

/**
 reduce 作用：汇总
 传入初始值和一个函数/闭包表达式，
 该函数/闭包表达式会执行n次，n代表数组中元素个数
 该函数/闭包表达式接收2个参数，上一次遍历汇总的结果，和数组中的元素
 将汇总的结果作为返回值返回
 */
//let result = array.reduce(0) { (previousResult, n) in
//    return previousResult + n
//}
//print(result)

//let result = array.reduce(0) { $0 + $1 }
//print(result)


/**
 flatMap 对比 map
 flatMap传入的函数/闭包表达式 必须返回sequence类型
 最终的返回值将sequence中的元素放入到新的数组中
 而map传入的函数/闭包表达式 直接将数组作为元素放入到新的数组中
 */

//let newArray = array.map { n in
//    return Array(repeating: n, count: n)
//}
//
//print(newArray)
//
//
//let newArray2 = array.flatMap { n in
//    return Array(repeating: n, count: n)
//}
//print(newArray2)

//let newArray = array.flatMap { Array(repeating: $0, count: $0) }
//print(newArray)


/**
 compactMap对比map
 compactMap在进行元素映射的时候，会将nil过滤掉，并且会将可选项进行解包
 */
let array = ["1", "flutter", "3", "Vue"]
//
//let newArray = array.map { item in
//    return Int(item)
//}
//print(newArray)
//
//let newArray2 = array.compactMap { item  in
//    return Int(item)
//}
//
//print(newArray2)

let newArray = array.compactMap { Int($0) }
print(newArray)
