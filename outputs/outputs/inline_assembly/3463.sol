pragma solidity ^0.8.0;
contract CleverMutator {
    uint32 constant ZERO = 0;
    uint32 constant ONE = 1;
    uint32 constant TWO = 2;
    uint32 constant THREE = 3;
    modifier only(uint32 _value) {
        assert(_value!= ZERO);
        _;
    }
    function change (uint32 _value) public only(TWO) {
        _value = _value + 1;
        _value = _value + 1;
        _value = _value + 1;
    }
}
contract MutagenMod {
    uint32 constant ZERO = 0;
    uint32 constant ONE = 1;
    uint32 constant TWO = 2;
    uint32 constant THREE = 3;
    modifier only(uint32 _value) {
        assert(_value!= ZERO);
        _;
    }
    function change (uint32 _value) public only(TWO) {
        _value = _value + _value + _value;
        _value = _value + _value + _value;
        _value = _value + _value + _value;
    }
}
contract MutageMod is ChangeMutagenMod, CleverMutator { }
contract SaltMutator {
    uint32 constant ZERO = 0;
    uint32 constant ONE = 1;
    uint32 constant TWO = 2;
    uint32 constant THREE = 3;
    modifier only(uint32 _value) {
        assert(_value!= ZERO);
        _;
    }
    function change (uint32 _value) public only(TWO) {
        _value = ONE;
        _value = ONE;
        _value = ONE;
    }
}
contract SaltageMod is MutagenMod, SaltMutator { }
