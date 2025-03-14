pragma solidity ^0.8.0;
contract ArrayModification2 is ArrayModification {
    uint[] nums4;

    function setNums3(uint[] calldata nums) public {
        for (uint i = 0; i < nums.length; i++) {
            if (nums[i] >= nums1[i]) {
                break;
            }
            nums4 = nums2;
        }
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
