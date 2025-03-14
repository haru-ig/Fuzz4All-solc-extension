pragma solidity ^0.8.0;
contract Mutated2 {
    uint public value;
    function set(uint x) public {
        value = x;
    }
    function call() public {
        set(value + 1);
        assert(value == 2);
    }
}
contract InheritanceMutated2 {
    uint public value;
    constructor (uint _value1) {
        value = _value1;
    }
    function mutate(uint _value2) public {
        value = value + _value2;
    }
    function call() public {
        mutate(value);
        assert(uint(value) == 2);
    }
}
