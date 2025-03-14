pragma solidity ^0.8.0;
contract MutagenMutation {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    modifier onlySet(uint newValue) {
        assert(newValue!= ZERO);
        _;
    }
    functon set (uint _value) onlySet(_value) public { _value++; }
    function modify (uint _value) public { _value -= 1; }
}
