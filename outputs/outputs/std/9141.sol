pragma solidity ^0.8.0;
contract ComplexEfficientComparisonGenericContract is EfficientComparisonGenericContract {
    function printValue() public view returns (uint256) {
        uint256 value = getValue();
        value += value;
        return value;
    }
}
