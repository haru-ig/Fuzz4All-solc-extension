pragma solidity ^0.8.0;
contract Arrays3 {


    uint constant M = 87;
    uint[] nums1;
    uint[][] nums2;
    uint[][] nums3;
    uint[][] nums4;
    function test() public {
        uint256 i = M;
        for (; i < M * 2; i++) {
            nums1[i] = 173;
            nums1[i] = 0;
            nums1[i] = 0;
            nums1[i] = 0;
            nums1[i] = 0;
        }
        nums1[i] = 0;
        nums1[i] = 0;
        nums1[i] = 0;
        nums1[i] = 0;
        nums1[i] = 0;
        nums1[i] = 0;
        nums1[i] = 0;
        nums1[i] = 0;

        nums1[i + 4] = 0;
        nums1[i + 4] = 0;
        nums1[i + 4] = 0;
        nums1[i + 4] = 0;
        nums1[i + 4] = 0;
        nums1[i + 4] = 0;
        nums1[i + 4] = 0;
        nums1[i + 4] = 0;
        nums1[i + 4] = 0;

        nums1[i + 9] = 0;
        nums1[i + 9] = 0;
        nums1[i + 9] = 0;
        nums1[i + 9] = 0;
        nums1[i + 9] = 0;
        nums1[i + 9] = 0;
        nums1[i + 9] = 0;
        nums1[i + 9] = 0;
        nums1[i + 9] = 0;

        nums1[i + 14] = 173;
        nums1[i + 14] = nums1[i + 10] + nums1[i + 11] + nums1[i + 12];
