pragma solidity ^0.8.0;
contract ArithmeticMutated {
    uint public _lastResult;
    uint public _lastValue;
    function _arithmetic(uint _value) private {
        uint _newValue = _lastResult + uint128(_value) - uint128(_value);
        uint _newValue2 = _lastResult + uint128(_lastValue.add(_value)) + uint128(_value);
        uint _newValue3 = _lastResult + uint128(_lastValue) + uint128(_value);
        uint _newValue4 = _lastResult + int128(_value) + uint128(_value);
        _lastResult = _newValue;
        _lastResult = _newValue2;
        _lastResult = _newValue3;
        _lastResult = _newValue4 >> 1;
        _lastValue = _value;
    }
    function _increment(uint _value) private {
        _arithmetic(_value);
    }
    function _decrement(uint _value) private {
        uint _newValue = uint128(_value) - uint128(_value);
        _arithmetic(_newValue);
    }
    function _incrementAndGet() private {
        uint _newValue = uint128(20) + uint128(4) - uint128(20);
        uint _newValue2 = uint128(20) + uint128(20);
        uint _newValue3 = uint128(20) + uint128(20);
        uint _newValue4 = int128(20) + uint128(20);
        _arithmetic(_newValue);
        _arithmetic(_newValue2);
        _arithmetic(_newValue3);
        _arithmetic(_newValue4);
        _lastValue = _newValue;
    }
    function _decrementAndGet() private {
        _arithmetic(uint128(37));
        uint _newValue = uint128(2) + uint128(2) + uint128(2) + uint128(2);
        uint _newValue2 = uint128(3);
        uint _newValue3 = uint128(6);
        uint _newValue4 = uint128(9);
        uint _newValue5 = int128(6);
        _arithmetic(_newValue);
        _arithmetic(_newValue2);
        _arithmetic(_newValue3);
        _arithmetic(_newValue4);
        _arithmetic(_newValue5);
    }
}
contract Arithmetic {
    function _increment(uint _value) public pure returns (uint) {
        return uint128(20) + uint128(_value) - uint128(20);
    }
    function _decrement
