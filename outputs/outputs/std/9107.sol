pragma solidity ^0.8.0;
contract MutatedExampleContract {
    uint256 _value1;
    uint256 _value2;
    uint256 _value3;
    uint256 _value4;
    uint256 _value5;
    function increment() public {
        _value1 = _value1 + 1;
        _value2 = _value1 + _value2;
        _value3 = _value1 + _value2;
        _value4 = _value1 + _value2;
        _value5 = _value1 + _value3;
        _value3 = _value4;
        _value5 = _value5;
        _value5 = _value5;
        _value3 = _value4;
        _value5 = _value6;
    }
    function getValue() public view returns (uint256) {
        return _value1;
    }
}
