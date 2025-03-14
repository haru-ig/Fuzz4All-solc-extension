pragma solidity ^0.8.0;

contract Arrays2 is Array2 {
    uint constant M = 87;
    uint[] nums1;
    uint[][] nums2;
    uint[][] nums3;
    uint[][] nums4;
    uint256 constant one = 1;
    function getMin(uint[][] calldata nums) public view returns (uint256) {
        uint256 min = nums[0][0];
        for (uint j = 1; j < nums[0].length; j++) {
            if (nums[0][j] < min) {
                min = nums[0][j];
            }
        }
        return min;
    }
    function modify() public returns (uint[][] memory) {
        nums2 = new uint[nums1.length][];
        nums1 = (uint[](nums1));
        nums2[0] = nums1;
        return nums2;
    }
}
