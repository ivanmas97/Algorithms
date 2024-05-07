//Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.
//
//You must implement a solution with a linear runtime complexity and use only constant extra space.

// XOR Solution
class XORSolution {
    func singleNumber(_ nums: [Int]) -> Int {
        var res = 0

        for num in nums {
            res ^= num
        }
        return res
    }
}

// Linear solution
class LinearSolution {
    func singleNumber(_ nums: [Int]) -> Int {
        nums.reduce(0, ^)
    }
}

// Test results
let array = [4,1,2,1,2]

let res = XORSolution()
let res2 = LinearSolution()

print(res.singleNumber(array))
print(res2.singleNumber(array))

