//Given an array of integers nums which is sorted in ascending order, and an integer target, write a function to search target in nums. If target exists, then return its index. Otherwise, return -1.
//
//You must write an algorithm with O(log n) runtime complexity.


// Binary Search Solution
class BinarySearchSolution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var (left, right) = (0, nums.count - 1)
        
        while left <= right {
            let mid = (right + left) / 2
            if nums[mid] == target {
                return mid
            }
            if nums[mid] < target {
                left = mid + 1
            } else if nums[mid] > target {
                right = mid - 1
            }
        }
        return -1
    }
}

// Test results
let (nums, target) = ([-1,0,3,5,9,12], 9)
let (nums2, target2) = ([-1,0,3,5,9,12], 2)

print(BinarySearchSolution().search(nums, target))
print(BinarySearchSolution().search(nums2, target2))
