pragma solidity ^0.8.0;
contract Array3 {
    function getSumArray(uint[3][] memory nums) public pure returns (uint) {
        uint total = 0;
        for (uint i = 0; i < nums.length; i++) {
            for (uint j = 0; j < nums[i].length; j++) {
                total += nums[i][j];
            }
        }
        return total;
    }
}
