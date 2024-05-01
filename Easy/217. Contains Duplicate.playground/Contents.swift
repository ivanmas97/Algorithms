// Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.


// Set solution
class SetSolution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        nums.count != Set(nums).count
    }
}


// Dictionary solution
class DictionarySolution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var dict: [Int: Int] = [:]
        
        for num in nums {
            if dict[num] != nil {
                return true
            }
            dict[num] = 1 // Set any value to dictionary key "num"
        }
        return false
    }
}

// Test Result
let setRes = SetSolution()
let dictRes = DictionarySolution()

let nums1 = [1,2,3,1]
setRes.containsDuplicate(nums1)
dictRes.containsDuplicate(nums1)

let nums2 = [1,2,3]
setRes.containsDuplicate(nums2)
dictRes.containsDuplicate(nums2)
