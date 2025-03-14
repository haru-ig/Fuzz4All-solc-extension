pragma solidity ^0.8.0;
contract ChangeMutagenMod2C {
    uint constant ZERO = 0;
    uint constant EIGHT = 8;
    uint constant THREE = 3;
    mapping(uint => bool) nondeterministically;
    modifier onlySet(uint _value) {
        assert(_value >= EIGHT);
        nondeterministically[_value] = true;
        _;
    }
    function change1 (uint _value) public onlySet(_value) {
        _value = ZERO;
        _value = ZERO;
        _value = ZERO;
    }
}
