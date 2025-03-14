pragma solidity ^0.8.0;
contract SemanticExampleComparingContract {
    uint256 constant value1 = 11000;
    uint256 constant value2 = value1 + 20;
    uint constant value0 = value1 - 20;
    uint256 constant value3 = value1 * value2;
    uint256 constant value4 = value0 / value1;
    bool constant value5 = value3 >= 20000 && 0 < value3 / 100;

    function increment(uint256 valueIn) public pure returns (uint256 newValue) {
        newValue = valueIn + 1;
    }

    function getValue() public pure returns (uint256 value) { return value1; }

    function getComparisonValue(uint256 valueIn) public view returns (uint256 comparisonValue) {
        comparisonValue = valueIn > value1? value1 : 0;
    }
}
