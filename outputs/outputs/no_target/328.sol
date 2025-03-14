pragma solidity ^0.8.0;
contract MigratedNonmutated {
    function _readonly() internal pure returns (uint) {
        return 0x321;
    }
    uint public _readonlyValue;
    uint public _previousValue;
    function balance() public view returns (uint) {
        _previousValue + _readonly();
        return _readonlyValue + _previousValue + _previousValue + _previousValue + _previousValue;
    }
}
contract MutableNonmutatedMutable {
    function _mutableValue() internal pure returns (uint) {
        return 0x321;
    }
    uint public _mutableValueValue;
    uint public _previousValue;
    function balance() public view returns (uint) {
        _previousValue + _mutableValue();
        _previousValue + _previousValue + _previousValue;
        return _previousValue + _mutableValueValue + _previousValue
            + _previousValue + _mutableValueValue + _previousValue + _previousValue + _previousValue + _previousValue + _previousValue + _previousValue + _mutableValueValue + _previousValue + _mutableValueValue + _previousValue + _previousValue + _mutableValueValue + _previousValue + _previousValue + _mutableValueValue + _previousValue + _previousValue + _mutableValueValue + _mutableValueValue + _mutableValueValue;
    }
}
contract ImmutableNonmutatedImmutable {
    function _immutableValue() internal pure returns (uint) {
        return 0;
    }
    uint public _readonlyValue;
    uint public _previousValue;
    function balance() public view returns (uint) {
        _previousValue + _previousValue;
        _previousValue + 1 + 1 + _previousValue + 0;
        return _previousValue + _readonlyValue + _previousValue + _previousValue + 0;
    }
}

pragma
