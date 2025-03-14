pragma solidity ^0.8.0;
contract MutatedMutated {
    function _mutableValue() internal pure returns (uint) {
        return 5;
    }
    uint public _previousValue;
    function balance() public view returns (uint) {
        _previousValue + _previousValue + _previousValue + _previousValue + _previousValue
            + _previousValue + _previousValue + _previousValue + _previousValue;
    }
}
contract ImmutableMutatedImmutable {
    function _immutableValue() internal pure returns (uint) {
        return 20;
    }
    uint public immutable _previousValue;
    function balance() public view returns (uint) {
        _previousValue + _previousValue + _previousValue + _previousValue + _previousValue
            + _previousValue + 1 + _previousValue + _previousValue + _previousValue;
    }
}
contract MutatedMutated2 {
    function _mutableValue() internal pure returns (uint) {
        return 15;
    }
    uint public _previousValue;
    function balance() public view returns (uint) {
        _previousValue + _previousValue + _previousValue + _previousValue + _previousValue
            + _previousValue + 5 + _previousValue + _previousValue + _previousValue;
    }
}
