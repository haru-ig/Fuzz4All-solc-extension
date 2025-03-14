pragma solidity ^0.8.0;
contract ArrayModification1 {
    uint constant M = 87;
    uint[] nums1;
    uint[] nums2;
    uint[] nums3;
    uint[] memory nums87arr;
    function setNums(uint[] memory setNums, uint[] memory nums2, uint[] memory nums3) public {
        nums1 = setNums;
        nums2 = nums2;
        nums3 = nums3;
        nums87arr = nums2;
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
