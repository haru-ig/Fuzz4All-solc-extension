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
    function sum1(uint[] memory nums) public pure returns(uint) {
        uint sum = 0;
        for(uint i = 0; i < nums.length; i++) sum += nums[i];
        return sum;
    }
    function sub2mulN2(uint[] memory nums, uint n) public pure returns(uint) {
        uint prod = 1;
        if(n > 0) {
            for(uint i = 0; i < n; i++) prod *= nums[i];
        }
        return prod;
    }
    function getMinElement1(uint[] memory nums) public view returns(uint) {
        uint first = nums[0];
        for(uint i = 1; i < nums.length; i++) {
            if(nums[i] < first) first = nums[i];
        }
        return first;
    }
    function getMaxElement2(uint[] memory nums) public view returns(uint) {
        uint last = nums[0];
        for(uint i = 1; i < nums.length; i++) {
            if(nums[i] > last) last = nums[i];
        }
        return last;
    }
    function sub2min3(uint[] memory nums) public pure returns(uint) {
        return sub2min1(nums);
    }
    function sub2max4(uint[] memory nums) public pure returns(uint) {
        return sub2max2(nums);
    }
    function sum2(uint[] memory nums) public pure returns(uint) {
        return sum1(nums);
    }
    function sub2prod1(uint[] memory nums, uint n) public pure returns(uint) {
        return sub2mulN2(nums, n);
    }
    function sub2prod2(uint[] memory nums) public pure returns(uint) {
        return sub2prod1(nums, nums.length);
    }
}
