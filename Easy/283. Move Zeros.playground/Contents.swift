//Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.

//Note that you must do this in-place without making a copy of the array.


// Two pointers
class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var i = 0 // non zero element pointer
        var j = 0 // position pointer

        while j < nums.count {
            if nums[j] != 0 {
                nums.swapAt(i, j)
                i += 1
            }
            j += 1
        }
    }
}

// Test results
let result = Solution()

var nums = [0,1,0,3,12]
result.moveZeroes(&nums)

print(nums)
