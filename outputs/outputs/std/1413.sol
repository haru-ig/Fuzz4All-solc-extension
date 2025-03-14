pragma solidity ^0.8.0;
contract ArrayModification {
    uint constant M = 87;
    uint nums1 = 94;
    uint nums2 = 157;
    uint nums3 = 178;
    uint nums4 = 65;
    function setNums(uint nums2) public {
        nums1 = nums2;
    }
}
