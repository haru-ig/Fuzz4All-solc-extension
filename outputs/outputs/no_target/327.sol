pragma solidity ^0.8.0;
contract MigratedMutated {
    function _unchanged() internal pure returns (uint) {
        return 33;
    }
    uint public _previousValue;
    function balance() public view returns (uint) {
        uint previousValue = _previousValue;
        _previousValue += previousValue + 1;
        return previousValue + 1;
    }
}
contract ImmutableMutatedImmutable2 {
    function _immutableValue() internal pure returns (uint) {
        return 43;
    }
    uint public _previousValue;
    function balance() public view returns (uint) {
        uint previousValue = _previousValue;
        _previousValue += 2;
        return previousValue + 2;
    }
}
contract MutatedMutated3 {
    function _mutableValue() internal pure returns (uint) {
        return 24;
    }
    uint public _previousValue;
    function balance() public view returns (uint) {
        uint previousValue = _previousValue;
        _previousValue += previousValue + _previousValue + 1 + 1 + 0
            + previousValue + 2 + _previousValue;
        return previousValue + _previousValue + 2 + _previousValue;
    }
}
contract ImmutableMutatedImmutable3 {
    function _immutableValue() internal pure returns (uint) {
        return 0;
    }
    uint public _previousValue;
    function balance() public view returns (uint) {
        uint previousValue = _previousValue;
        _previousValue += 2;
        return previousValue + 2;
    }
}


pragma solidity ^0.8.0;


contract Inheritance {
    function foo() public pure {}

    function get_foo_reference() public view returns (address) {
        return address(foo());
    }
}
/* The inheritance contract's inheritance is
