pragma solidity ^0.8.0;
contract EfficientComparisonGenericContract {
    uint256 public _value1;
    uint256 public _value2;
    function increment() public {
        _value1++;
        _value2 -= _value1;
        _value2 += _value1;
    }
    function getValue() public view returns (uint256) {
        return _value2;
    }
}
