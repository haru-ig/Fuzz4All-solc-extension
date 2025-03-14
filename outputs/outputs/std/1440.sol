pragma solidity ^0.8.0;
contract ArrayModification {
    uint constant M = 0;
    uint[] nums2;
    uint[] nums3;
    function setNums(uint256[] memory setNums) public {
        nums3 = setNums;
    }
    function getMin() public view returns (uint256) {
        uint max = nums2[0];
        for (uint i = 1; i < nums2.length; i++) {
            if (nums3[i] > max) {
                max = nums3[i];
            }
        }
        return max;
    }
}
