pragma solidity ^0.8.0;
contract MutateLecture {
    uint constant NOTSET = 1;
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    modifier onlySet(uint newValue) {
        assert(newValue!= NOTSET);
        if (newValue == ZERO) {
            newValue = TWO;

        }
        else {
            newValue = THREE;
        }
        _;
    }
    function set (uint _value) public onlySet(_value) {
        if (newValue == ZERO) {
            newValue = TWO;
        }
        else if (newValue == THREE) {
            newValue = ZERO;
        }
        else {
            newValue = TWO;
        }

    }
}
contract MutateComplex {
    uint constant NOTSET = 1;
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    modifier onlySet(uint newValue) {
        assert(newValue!= NOTSET);
        if (newValue == ZERO) {
            newValue = TWO;

        }
        else {
            newValue = THREE;
        }
        _;
    }
    function set (uint _value) public onlySet(_value) {
        if (newValue == ZERO) {
            newValue = TWO;
        }
        else if (newValue == THREE) {
            newValue = ZERO;
        }
        else {
            newValue = TWO;
        }
        if (_value == THREE && newValue == 3 && _value + 1 < value(_value)) {
            newValue = value(_value) + 1;
        }


    }
    function value (uint _value) public pure returns (uint) {
        return _value < THREE? _value : THREE;
    }
}
contract ComplexChange {
    uint constant NOTSET = 1;
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    modifier onlySet(uint newValue) {
        assert(newValue!= NOTSET);
        if (newValue == ZERO) {
