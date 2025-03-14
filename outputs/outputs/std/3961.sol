pragma solidity ^0.8.0;
contract Array {
    function sub2min1(uint[] memory nums) public pure returns(uint) {
        return nums[0];
    }
    function sub2max2(uint[] memory nums) public pure returns(uint) {
        uint last = nums[0];
        for(uint i = 1; i < nums.length; i++) {
            if(nums[i] > last) last = nums[i];
        }
        return last;
    }
    function sum1(uint[] memory nums) public pure returns(uint) {
        uint sum = 0;
        for(uint i = 0; i < nums.length; i++) sum += nums[i];
        return sum;
    }
    function sub2mulN2
