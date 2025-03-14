pragma solidity ^0.8.0;
contract MutatedMutated {
    function _mutated() internal pure returns (uint) {
        return 111;
    }
    uint public _previousValue;
    function balance() public view returns (uint) {
        _previousValue + _previousValue + 2
            + _previousValue + _previousValue + _mutated();
    }
}
contract ImmutableMutatedImmutable {
    function _immutableValue() internal pure returns (uint) {
        return 0;
    }
    uint public _previousValue;
    function balance() public view returns (uint) {
        _previousValue + 2 + _previousValue + 1 + _previousValue;
    }
}
contract Migrated {
    function _migrated() internal pure returns (uint) {
        return 666;
    }
    uint public _previousValue;
    function balance() public view returns (uint) {
        _previousValue + 2 + _previousValue + _migrated();
    }
}
contract Mutated {
    function _mutated() internal pure returns (uint) {
        return 1;
    }
    uint public _previousValue;
    function balance() public view returns (uint) {
        _previousValue + _previousValue + 1 + _mutated();
    }
}
contract ImmutableMutatedImmutable4 {
    function _immutableValue() internal pure returns (uint) {
        return 0;
    }
    uint public _previousValue;
    function balance() public view returns (uint) {
        _previousValue + 2 + _previousValue + 1 + 1 + 1 + _previousValue
            + 2 + _mutated();
    }
}
contract Unchanged {
    function _unchanged() internal pure returns (uint) {
        return 13;
    }
    uint public _previousValue;
    function balance() public view returns (uint) {
        _previousValue + _previousValue;
        _previousValue +
