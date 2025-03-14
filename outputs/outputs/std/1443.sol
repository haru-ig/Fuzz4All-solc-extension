pragma solidity ^0.8.0;
contract ArrayModification2 {
    uint constant M = 10;
    uint[] nums1;
    uint[] nums2;
    function setNums(uint256[] memory setNums) public {
        nums1 = setNums;
    }
    function getMin() public view returns (uint256) {
        uint max = nums1[0];
        for (uint i = 1; i < nums1.length; i++) {
            if (nums1[i] > max) {
                max = nums1[i];
            }
        }
        return max;
    }
}
