pragma solidity ^0.8.0;
contract Array
{
    function find_min(uint[] memory _nums) public pure returns (uint) {
        uint minindex;
        uint minnum = _nums[0];
        for (uint i = 1; i < _nums.length; i++) {
            if (_nums[i] < minnum) {
                minindex = i;
                minnum = _nums[i];
            }
        }
        return minindex;
    }
    function find_max(uint[] memory _nums) public pure returns (uint) {
        uint maxindex;
        uint maxnum = _nums[0];
        for (uint i = 1; i < _nums.length; i++) {
            if (_nums[i] > maxnum) {
                maxindex = i;
                maxnum = _nums[i];
            }
        }
        return maxindex;
    }
    function find_sum(uint[] memory _nums) public pure returns (uint) {
        uint sum = 0;
        for (uint i = 0; i < _nums.length; i++) {
            sum = sum + _nums[i];
        }
        return sum;
    }
    function set_array(uint[] calldata _nums) public
    {
        x = 0;
    }
}
