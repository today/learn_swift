
### 不需要分号结尾
分号不是必须的。需要的时候也可以用。

###  let & var
用 let 定义常量
let a=’hello’   
let explicitDouble: Double = 70

用 var  定义变量
var a = 10
var n:Float = 5

### 转字符串
let width = 10
let widthLabel = label + String(width)

或者使用 \()
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) 

### 数组和字典
var colorList = ["red",  "blue",] // 最后可以有一个逗号。
colorList[1] = "bottle of water"
// 数组只能用append等方法改变长度，不能直接用下标。
// 和 javascript 不一样。
colorList.append("grey")   
print(colorList)

var bDict = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
// dict 就可以直接增加元素
bDict["Jayne"] = "Public Relations"  
print(bDict)

// 创建空 array 和 dict
var emptyArray = [String]()
var emptyDictionary = [String: Float]()
// 如果类型信息可以被推断出来，也可以
shoppingList = []
occupations = [:]


### 控制流
if else
switch case
for-in 
for 
while 
repeat-while

// 例子
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)


if condition { ... }  // condition 必须是布尔表达式，这也和JS不同
**关于使用if和let来处理值缺失的情况。 说实话我没看明白**

switch 不需要写 break

for (kind, numbers) in interestingNumbers {...}
for i in 0..<4 {...}
使用..<创建的范围不包含上界，如果想包含的话需要使用...。

while n < 100 {...}

var m = 2
repeat {
    m = m * 2
} while m < 100

### 函数和闭包
func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}
greet("Bob", day: "Tuesday")



使用元组来让一个函数返回多个值。该元组的元素可以用名称或数字来表示。
func calc(scores: [Int]) -> (min: Int, max: Int, sum: Int) {...}

函数可以带有可变个数的参数，这些参数在函数内表现为数组的形式：
func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
sumOf()
sumOf(42, 597, 12)

函数可以嵌套。被嵌套的函数可以访问外侧函数的变量，你可以使用嵌套函数来重构一个太长或者太复杂的函数。
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()

函数是第一等类型，这意味着函数可以作为另一个函数的返回值。

func makeIncrementer() -> (Int -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

函数也可以当做参数传入另一个函数。

func hasAnyMatches(list: [Int], condition: Int -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(numbers, condition: lessThanTen)

### 对象和类
init  构造方法
deinit  析构方法

### protocol 协议
使用protocol来声明一个协议。 协议类似于 java 中的接口 Interface 。

### do-catch
使用do-catch。在do代码块中，使用try来标记可以抛出错误的代码。在catch代码块中，除非你另外命名，否则错误会自动命名为error。
do{
    let printerResponse = try sendToPrinter("Bi Sheng")
    print(printerResponse)
} catch {
    print(error)
}


### 泛型


***读到了第41页***




### temp



















