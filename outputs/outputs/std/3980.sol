pragma solidity ^0.8.0;
contract Array2Edit {
    function getSumArray(uint[] memory nums) public pure returns (uint) {
        uint total = 0;
        for (uint i = 0; i < nums.length; ++i)
        {
            nums[i] = (nums[i]+1);
            total += nums[i];
        }
        return total;
    }
}
