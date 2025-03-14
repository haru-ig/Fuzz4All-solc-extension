pragma solidity ^0.8.0;
contract MutatedMutated3 {
    function _mutableValue() internal pure returns (uint) {
        return 13;
    }
    uint public _previousValue;
    function balance() public view returns (uint) {
        _previousValue + 5 + _previousValue + _previousValue + _previousValue + 5 + _previousValue + _previousValue
            + _previousValue;
    }
}



contract ImmutableMutatedImmutable2 {
    function _immutableValue() internal pure returns (uint) {
        return 13;
    }
    uint public immutable _previousValue;
    function balance() public view returns (uint) {
        _previousValue + _previousValue + _previousValue + 5 + 5 + 5 + 5
            + _previousValue + _previousValue + _previousValue + _previousValue + _previousValue + _previousValue;
    }
}
contract ImmutableMutatedImmutable3 {
    function _immutableValue() internal pure returns (uint) {
        return 15;
    }
    uint public immutable _previousValue;
    function balance() public view returns (uint) {
        _previousValue + _previousValue + 1 + _previousValue + 1 +_previousValue +
            _previousValue + 1 + _previousValue + _previousValue
            + _previousValue + _previousValue + _previousValue
            + _previousValue + _previousValue;
    }
}
