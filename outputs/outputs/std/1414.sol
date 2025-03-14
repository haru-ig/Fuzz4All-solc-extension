pragma solidity ^0.8.0;
contract ArrayModificationMutated {
    uint constant M = 87;
    uint[] nums1;
    uint[][] nums;
    uint[] nums2;
    uint[][] nums3;
    function setNums(uint[][] calldata nums) public {
        nums1 = nums[0];
        nums = nums;
    }
    function getMin() public view returns (uint256){
        uint256 min = nums1[0];
        for (uint i = 1; i < nums1.length; i++) {
            if (nums1[i] < min) {
                min = nums1[i];
            }
        }
        return min;
    }
}
