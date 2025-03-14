pragma solidity ^0.8.0;
contract Array {
    uint[] public nums;
    function addToEnd(uint x) public {
        require(x <= 65535);
        for (uint i = 0; i < nums.length; ++i) {
            nums[i] = nums[i + 1];
        }
        nums[nums.length] = x;
        ++nums.length;
    }

    function getValue(uint i) public pure returns (uint) {
        return nums[i];
    }

    function getSum(uint start, uint end) public view returns (uint) {
        uint sum = nums[start];
        for (uint j = start + 1; j < end; ++j) {
            sum += nums[j];
        }
        return sum;
    }
}
