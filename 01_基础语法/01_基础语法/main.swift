//
//  main.swift
//  01_基础语法
//
//  Created by 白晗 on 2020/9/11.
//  Copyright © 2020 LazyLoad. All rights reserved.
//

import Foundation

print("Hello World!")

func getNum() -> Int {
    return 30
}

// 声明一个常量
// 只能被赋值1次
// 常量的值不要求在编译时期确定，也就是说它可以接收一个函数的返回值。

let num = getNum()
//num = 20 // 报错
//print(num)


// 声明一个变量
var num2 = 20
num2 = 40
print(num2)

// 常量/变量在初始化之前都不能使用 没有默认值
let a:Int
var b:Int
//print(a)
//print(b)

//let c

let value = 10.0
print(value)


// 字符串拼接
let name = "YaoMing"
let age = 39
print("My name is \(name) and My age is \(age + 1)")


// 元组
// 通过 索引 取值
let http404Error = (404, "Not Found")
print("The status code is \(http404Error.0)")
print("The status message is \(http404Error.1)")

// 通过变量/常量 分解元组的内容
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
print("The status message is \(statusMessage)")

// 通过使用下划线，忽略部分值
let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")

// 类型安全
let x: Int = 20
let y: Double = 3.13

//let result = x + y
let result1 = x + Int(y)
let result2 = Double(x) + y
print(result1)
print(result2)
