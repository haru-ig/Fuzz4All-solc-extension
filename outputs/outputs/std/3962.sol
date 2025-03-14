pragma solidity ^0.8.0;
contract Array {
    function sub2min1(uint[] memory nums) public pure returns(uint) {
        uint result = nums[0];
        for(uint i = 1; i <= nums.length; i++) {
            if(nums[i] < nums[result]) result = i;
        }
        return result;
    }
    function sub2max2(uint[] memory nums) public pure returns(uint) {
        uint result = nums[0];
        for(uint i = 1; i <= nums.length; i++) {
            if(nums[i] > nums[result]) result = i;
        }
        return result;
    }
}
