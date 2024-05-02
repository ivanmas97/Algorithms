// Given an integer array nums sorted in non-decreasing order, return an array of the squares of each number sorted in non-decreasing order.

// 2 pointers solution
class TwoPointersSolution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var left = 0
        var right = nums.count - 1
        var result = [Int]()
        
        while left <= right {
            if nums[left] * nums[left] > nums[right] * nums[right] {
                result.append(nums[left] * nums[left])
                left += 1
            } else {
                result.append(nums[right] * nums[right])
                right -= 1
            }
        }
        return result.reversed()
    }
}


// Linear solution
class LinearSolution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        nums.map {$0 * $0}.sorted(by: <)
    }
}


// Test results
let array = [-4,-1,0,3,10]

let twoPointersResult = TwoPointersSolution()
let linearResult = LinearSolution()

print(twoPointersResult.sortedSquares(array))
print(linearResult.sortedSquares(array))
