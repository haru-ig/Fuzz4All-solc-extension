pragma solidity ^0.8.0;
address payable owner;
contract ArrayModification2 {
    uint constant MIN = 30;
    uint[] public nums;
    bool isDivisible;
    function setNums(uint256[] calldata nums) public {
        nums = nums;
    }

    function getMin() public view returns (uint) {
        uint min = nums[0];
        for (uint i = 1; i < nums.length; i++) {
            if (nums[i] < min) {
                min = nums[i];
            }
        }
        return min;
    }
}
