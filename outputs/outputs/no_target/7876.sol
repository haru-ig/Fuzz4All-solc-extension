pragma solidity ^0.8.0;
contract TestMutator {
    uint40 value;
    function set(uint40 _value) public returns (uint40) {
        value = 0;
        uint40 x = 0 < _value? uint40(1) : 0;
        value = 0 < x? uint40(1) : 0;
        _value = (uint40(value) << _value) + _value;
        if (1 == _value) {
            value = _value;
        }
        return value;
    }
    function test() public returns (uint40) {
        return set(42);
    }
}
