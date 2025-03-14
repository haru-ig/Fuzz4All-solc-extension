pragma solidity ^0.8.0;
contract Array2 {












    function setToIndex(uint[] memory nums, uint _index, uint value) public when (nums.length > _index) {
        nums[_index] = value;
    }


    function prev(uint value) public pure returns (uint[] memory ret) {
        uint[] memory nums = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
