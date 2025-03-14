pragma solidity ^0.8.0;
contract ArrayMath {
	function test() public {
        uint n = 123;
        uint[] memory nums = [n, n / 2, 0];
        uint k = 123;
        uint[] memory arrs = [1, 123, 983, 98, 518, 555, 77, 45, 77];
        uint res = 1;
        for(uint i = 0; i < arrs.length; i++) {
            res *= arrs[i];
            res %= k;
        }
        for(uint i = 0; i < nums.length; i++) {
            res *= nums[i];
            res %= k;
        }
        for(uint i = 0; i < nums.length; i++) {
            uint a = nums[i];
            uint b = nums[i + 1];
            uint c = nums[i + 2];
            uint d = nums[i + 3];
            uint e = nums[i + 4];
            uint f = nums[i + 5];
            uint s = nums[i + 6];
            require(a[a < b]);
        }
    }
}
