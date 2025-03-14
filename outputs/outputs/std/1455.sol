pragma solidity ^0.8.0;
contract Mutate {
    uint constant M = 10;
    uint[] nums1;
    uint[] nums2;
    function setNums(uint256[] memory setNums) public {
        nums1 = setNums;
    }
    function append() public {
        uint256 len = nums1.length;
        while(len < M) {
            appendNum();
            len++;
        }
    }
}
