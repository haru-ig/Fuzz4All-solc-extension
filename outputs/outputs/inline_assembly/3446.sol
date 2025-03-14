pragma solidity ^0.8.0;
contract ChangeLecture {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    modifier onlySet(uint newValue) {
        assert(newValue!= ZERO);
        _;
    }
    function set (uint _value) public onlySet(_value) {
        _value = _value + ZERO;
        _value = _value + ONE;
        _value = _value + _value;
        return;
    }
    function change(uint _value) public onlySet(_value) {
        _value = _value + ZERO;
        _value = _value + ONE;
        _value = _value + _value;
        return;
    }
}
contract ChangeComplex {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    modifier onlySet(uint newValue) {
        assert(newValue!= ZERO);
        _;
    }
    function set (uint _value) public onlySet(_value) {
        _value = _value + ZERO;
        _value = _value + ONE;
        _value = _value + _value;
        return;
    }
    function change(uint _value) public onlySet(_value) {
        _value = _value + ZERO*TWO;
        _value = _value + ONE*TWO;
        _value = _value + _value*ONE;
        return;
    }
}
