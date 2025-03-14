pragma solidity ^0.8.0;
contract Arrays3 {
    uint constant M = 87;
    uint[] nums1;
    uint[] nums2;
    uint[] nums3;
    uint[] nums4;
    function getMin() public returns (uint256) {
        uint32 min = uint32(_MIN);
        for (uint j = 1; j < nums1.length; j++) {
            if (nums1[j] < min) {
                min = nums1[j];
            }
        }
        return min;
    }
}
