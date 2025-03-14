pragma solidity ^0.8.0;
contract ArrayModification2 {
    uint constant M = 10;
    uint[] nums1 = [1, 15, 50, 20, 120];
    function setNums(uint256[] memory setNums) public {
        nums1 = setNums;
    }
    function addNums(uint256[] memory addNums) public {
        nums1 = nums1.add(addNums);
    }
}
