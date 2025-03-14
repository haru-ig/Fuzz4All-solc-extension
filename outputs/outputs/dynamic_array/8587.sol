pragma solidity ^0.8.0;
contract SemanticallyEquivalentMutatorWithoutNestedCallDataArrayAbiEncodingOptimizationAndNestedCalldataArrayAbiReencodingSizeValidationAndEarlierVersionBugReproduction {
    constructor(int32[][][] memory _myArray, uint256[][][] memory _nestedInts, uint256[][] _nestedMax) {}
    function mutatorTest() external {}
}
library SafeMath {
    function add(uint256 x, uint256 y) internal pure returns (uint256) {
        uint256 z = x + y;
        require(z >= x, "SafeMath: addition overflow");

        return z;
    }
}
