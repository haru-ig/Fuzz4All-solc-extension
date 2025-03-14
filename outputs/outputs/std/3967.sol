pragma solidity ^0.8.0;
contract Array2 {
    function setAll2(uint[] memory nums, uint value) public {
        for (uint i = 0; i < nums.length; i++) nums[i] = value;
    }
}
