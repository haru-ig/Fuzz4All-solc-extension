pragma solidity ^0.8.0;
contract MutateArrays3 {
    uint constant M = 83;
    uint[] nums1;
    uint[] nums2;
    uint[] nums3;
    uint[] nums4;
    uint[] nums5;
    function getSum(uint[] memory nums) public view returns (uint) {
        uint sum = nums[0];
        for (uint i = 1; i < nums.length; i++) {
            sum += nums[i];
        }
        return sum;
    }
}
