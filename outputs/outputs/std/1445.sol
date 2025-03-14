pragma solidity ^0.8.0;
contract ArrayModification2 {
    uint const M = 10;
    uint[] nums1;
    uint[] nums2;
    function setNums(uint256[M] memory nums) public {
        nums1 = nums;
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
