pragma solidity ^0.8.0;
contract Arrays2 {
    uint constant M = 87;
    uint[] nums1;
    uint[][] nums2;
    uint[][] nums3;
    uint[][] nums4;

    function getMin(uint[][] calldata nums) public view returns (uint256) {
        uint256 min = nums[0][0];
        for (uint j = 1; j < nums[0].length; j++) {
            if (nums[0][j] < min) {
                min = nums[0][j];
            }
        }
        return min;
    }
}
