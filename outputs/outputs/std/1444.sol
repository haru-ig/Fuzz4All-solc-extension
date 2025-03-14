pragma solidity ^0.8.0;
contract ArrayModification {
    uint constant M = 1;
    uint[] nums1;
    uint[] nums;
    function setNums(uint256[7] memory setNums) public {
        nums = setNums;
    }
    function getMin() public view returns (uint256) {
        uint max = nums1[0];
        for (uint i = 1; i < nums1.length; i++) {
            if (nums[M][i] > max) {
                max = nums[M][i];
            }
        }
        return max;
    }
}
