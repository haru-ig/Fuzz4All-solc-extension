pragma solidity ^0.8.0;
contract Arrays3 {
    uint constant M = 2;
    uint[] nums1;
    uint[][] nums2;
    uint[M][] nums3;
    uint[M * 2][] nums4;
    uint[M + 3][] nums5;
    uint[M * 35][] nums6;
    uint[M + 8][] nums7;
    uint[M * 98][] nums8;
    function setMin(uint[][] calldata nums) public {
        for (uint i = 0; i < nums1.length && nums1[i] > 0; i++) {
            nums1[i]--;
        }
    }
}
