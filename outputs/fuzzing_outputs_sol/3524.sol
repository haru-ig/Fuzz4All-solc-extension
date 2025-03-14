pragma solidity ^0.8.0;
contract MutatedStorage5 {
    uint[] public nums;
    constructor() public {
      nums.push(0);
    }
    function changeNumber() public {
      nums[0] = 0;
    }
    function addNegativeTwo() public {
      nums.push(-2);
    }
}
