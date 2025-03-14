pragma solidity ^0.8.0;
contract ArrayModification {
    uint constant M = 0;
    uint[] nums1;
    uint nums11;
    uint nums;
    function setNums(uint256[] memory setNums) public {
        nums1 = setNums;
    }
    function setNums1(uint256[] memory setNums1) public {
        nums11 = setNums1;
    }
    function getMin() public view returns (uint256) {
        uint max = nums1[0];
        for (uint i = 1; i < nums1.length; i++) {
            if (nums11[i] > max) {
                max = nums11[i];
            }
        }
        return max;
    }
    function setNumsN(uint[] memory setNums2) public {
        nums = setNums2;
    }
    function getMinN() public view returns (uint256) {
        uint max = nums21[0];
        for (uint i = 1; i < nums2.length; i++) {
            if (nums[i] > max) {
                max = nums[i];
            }
        }
        return max;
    }
}
