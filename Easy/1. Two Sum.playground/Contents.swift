//Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
//
//You may assume that each input would have exactly one solution, and you may not use the same element twice.
//
//You can return the answer in any order.

// Dictionary solution #1
class DictSolution1 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        
        for i in 0..<nums.count {
            if dict[target - nums[i]] != nil {
                return [dict[target - nums[i]] ?? 0, i]
            } else {
                dict[nums[i]] = i
            }
        }
        return [0]
    }
}

// Dictionary solution #2 (faster)
class DictSolution2 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        
        for (index, num) in nums.enumerated() {
            let complement = target - num
            if let complementIndex = dict[complement] {
                return [complementIndex, index]
            }
            dict[num] = index
        }
        return [0]
    }
}


// Test results
var (nums, target) = ([2,7,11,15], 9)

print(DictSolution1().twoSum(nums, target))
print(DictSolution2().twoSum(nums, target))
