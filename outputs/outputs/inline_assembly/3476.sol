pragma solidity ^0.8.0;
contract MutateContract {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant MAX_VALUE = 100;
    modifier onlyGet(uint _value) {
        assert(_value == MAX_VALUE);
        _;
    }
    function change (uint _value) public onlyGet(_value) {
        _value = ZERO;
        _value = ONE;
        _value = MAX_VALUE - _value;
    }
}
