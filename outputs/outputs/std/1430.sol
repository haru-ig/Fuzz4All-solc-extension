pragma solidity ^0.8.0;
contract ArrayModification {
    uint constant M = 87;
    uint256[] nums1;
    uint256[] nums2;
    uint256[] nums3;
    function setNums(uint256[] memory setNums) public {
        nums1 = setNums;
    }
    function setNums2(uint256[] memory setNums) public {
        nums2 = setNums;
    }
}
