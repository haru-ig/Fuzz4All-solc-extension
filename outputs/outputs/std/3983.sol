pragma solidity ^0.8.0;
contract Array3 {
    function getMaxArray(uint[] memory nums) public pure returns (uint) {
        uint max = nums[0];
        for (uint j = 1; j < nums.length; ++j)
        {
            if (nums[j] > max)
            {
                max = nums[j];
            }
        }
        return max;
    }
}
