pragma solidity ^0.8.0;
contract ArrayModification {
    uint constant M = 0;
    uint8[3] nums;
    constructor(uint8[3] memory setNums) public {
        nums = setNums;
    }
    function getMin() public view returns (uint8) {
        uint8 max = nums[0];
        for (uint i = 1; i < nums.length; i++) {
            if (nums[i] > max) {
                max = nums[i];
            }
        }
        return max;
    }
}
