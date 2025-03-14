pragma solidity ^0.8.0;
contract Array3 {
    function getMinArray(uint[][] memory nums) public pure returns (uint) {
        uint min = uint(2**256 + 1);
        for (uint i = 0; i< nums.length; i++) {
            for (uint j = 0; j < nums[i].length; j++) {
                if (nums[i][j] < min) {
                    min = nums[i][j];
                }
            }
        }
        return min;
    }
}
