import Foundation
protocol HomeworkService {
    // Функция деления с остатком, должна вернуть в первой части результат деления, во второй части остаток.
    func divideWithRemainder(_ x: Int, by y: Int) -> (Int, Int)

    // Функция должна вернуть числа фибоначчи.
    func fibonacci(n: Int) -> [Int]

    // Функция должна выполнить сортировку пузырьком.
    func sort(rawArray: [Int]) -> [Int]

    // Функция должна преобразовать массив строк в массив первых символов строки.
    func firstLetter(strings: [String]) -> [Character]

    // Функция должна отфильтровать массив по условию, которое приходит в параметре `condition`. (Нельзя юзать `filter` у `Array`)
    func filter(array: [Int], condition: ((Int) -> Bool)) -> [Int]
}

struct HomeworkServiceImplementation: HomeworkService {
    func divideWithRemainder(_ x: Int, by y: Int) -> (Int, Int) {
        let a = x / y
        let b = x % y
        return (a, b)
    }
    
    func fibonacci(n: Int) -> [Int] {
        var a = [0, 1]
        if n <= 2 {
            return Array(a.prefix(n))
        }
        
        for _ in 2..<n {
            let nextNumber = a[a.count - 1] + a[a.count - 2]
            a.append(nextNumber)
        }
        return a
    }
    
    func sort(rawArray: [Int]) -> [Int] {
        var arr = rawArray
        
        for i in 0..<arr.count {
            for j in 0..<(arr.count - i - 1) {
                if arr[j] > arr[j + 1] {
                    let temp = arr[j]
                    arr[j] = arr[j + 1]
                    arr[j + 1] = temp
                }
            }
        }
        return arr
    }
    
    func firstLetter(strings: [String]) -> [Character] {
        var letters: [Character] = []
        for s in strings {
            if let firstLetter = s.first {
                letters.append(firstLetter)
            }
        }
        return letters
    }
    
    func filter(array: [Int], condition: ((Int) -> Bool)) -> [Int] {
        var filtArray: [Int] = []
        for element in array {
            if condition(element) {
                filtArray.append(element)
            }
        }
        return filtArray
    }
}
