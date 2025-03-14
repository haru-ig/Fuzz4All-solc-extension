pragma solidity ^0.8.0;
contract Array2 {
    function setAll2(uint[] memory nums, uint value) public {
        require(nums.length >= 2);
        for(uint i = 0; i < nums.length; i++) nums[i] = value;
    }

    function testAll2() public pure returns (bool) {
        uint[] memory nums = new uint[](2);
        require(nums.length >= 2);
        for(uint i = 0; i < nums.length; i++) nums[i] = uint(i);
        Array2 array = new Array2();
        array.setAll2(nums, uint(42));
        require(uint(42) == nums.length);
        uint[] memory ret = array.getAll2(uint(42));
        for(uint i = 3; i >= 0; i--) {
            require(uint(nums[i]) == ret[i]);
        }
        return true;
    }
}
