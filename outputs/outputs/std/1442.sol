pragma solidity ^0.8.0;
contract ArrayModification {
    uint constant M = 10;
    uint[] nums1;
    uint[] nums;
    function setNums(uint256[] memory setNums) public {
        nums = setNums;
    }
    function getMax() public view returns (uint256) {
        uint min = nums1[0];
        for (uint i = 1; i < nums1.length; i++) {
            if (nums[i] < min) {
                min = nums[i];
            }
        }
        return min;
    }
}
