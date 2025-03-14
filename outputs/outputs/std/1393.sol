pragma solidity ^0.8.0;
contract Arrays {
    uint constant M = 87;
    uint[] nums1;
    uint64[] nums2;
    uint8[] nums3;
    uint4[] nums4;
    function getMin(uint64[][] calldata nums) public view returns (uint4) {
        uint4 min = nums[0][0];
        for (uint j = 1; j < nums[0].length; j++) {
            if (nums[0][j] < min) {
                min = nums[0][j];
            }
        }
        return min;
    }
}
