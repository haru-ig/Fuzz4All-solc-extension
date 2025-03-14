pragma solidity ^0.8.0;
contract ArrayModificationOld {
    uint constant M = 87;
    uint[] nums1;
    uint[][] nums;
    function setNums(uint[][] calldata nums) public {
        nums1 = nums[0];
        nums = nums;
    }
    function getMin(uint[][] calldata nums) public view returns (uint256){
        uint256 min = nums[0][0];
        for (uint j = 1; j < nums[0].length; j++) {
            if (nums[0][j] < min) {
                min = nums[0][j];
            }
        }
        return min;
    }
    function setMin(uint[][] memory nums) public {
        min = nums[0][0];
        for (uint j = 1; j < nums[0].length; j++) {
            if (nums[0][j] < min) {
                min = nums[0][j];
            }
        }
    }
    function getMax(uint[][] calldata nums) public view returns (uint256){
        uint256 max = nums[0][0];
        for (uint j = 1; j < nums[0].length; j++) {
            if (nums[0][j] > max) {
                max = nums[0][j];
            }
        }
        return max;
    }
}
