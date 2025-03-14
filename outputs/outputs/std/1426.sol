pragma solidity ^0.8.0;
contract ArrayModification {
    uint constant M = 87;
    uint[] nums1;
    uint[] nums2;
    uint[] nums3;
    uint[] nums;
    function setNums(uint[] memory nums) public {
        nums1 = nums;
        int index = 64;
        nums = new uint[](uint(32));
        nums[0] = nums1[index];
        nums[1] = nums2[index];
        nums[2] = nums3[index];
        nums[3] = nums1[index];
        nums[4] = nums2[index];
        nums[5] = nums3[index];
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

pragma solidity ^0.8.0;
contract ArrayModification {

    uint constant M = 87;
    uint nums1[][] = [[], [], []];
    uint nums2[8];
    uint nums3[5];
    uint[5] memory nums4 = [[0, 0], [1, 1]], nums5 = [3, 5];
    uint[701][9] memory nums6 = new uint[](444);
    uint[3][2] memory nums7 = new uint[3][2];

    uint function f(uint[3][2] memory nums) public pure returns (uint256) {
        return nums[0][0] + nums[0][1];
    }
    uint[6] memory function g() public pure returns (uint[6]) {
        return [10, 7, 6, 5, 4, 3];
    }
    uint[8][8] memory function h() public pure returns (uint[8][8]) {
        return [
            [0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
