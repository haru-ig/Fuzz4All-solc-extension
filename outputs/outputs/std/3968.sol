pragma solidity ^0.8.0;
contract Array1 {
    function getSumArray(uint[] memory nums) public pure returns (uint) {
        uint total = 0;
        for (uint i = 0; i < nums.length; i++) total += nums[i];
        return total;
    }
    function getMinArray(uint[] memory nums) public pure returns (uint) {
        if(nums.length == 0) return 0;
        uint min = nums[0];
        for (uint i = 0; i < nums.length; i++) {
            if (nums[i] < min) min = nums[i];
        }
        return min;
    }
    function getMaxArray(uint[] memory nums) public pure returns (uint) {
        if(nums.length == 0) return 0;
        uint max = nums[0];
        for (uint i = 0; i < nums.length; i++) {
            if (nums[i] > max) max = nums[i];
        }
        return max;
    }
    function setAll1(uint[] memory nums, uint value) public {
        for (uint i=0; i < nums.length; i++) nums[i] = value;
    }
}
