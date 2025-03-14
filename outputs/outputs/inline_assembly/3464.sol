pragma solidity ^0.8.0;
contract ChangeMutagenMod2 {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    modifier onlySet(uint _value) {
        assert(_value == ZERO);
        _;
    }
    function change2 (uint _value) public onlySet(_value) {
        _value = ZERO;
        _value = ZERO;
        _value = ZERO;
    }
}
