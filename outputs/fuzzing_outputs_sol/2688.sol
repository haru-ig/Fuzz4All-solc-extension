pragma solidity ^0.8.0;
contract InheritanceFallbackMutated {
    uint public value;
    constructor (uint _value1) {
         value = _value1;
    }
    function mutate1() public {
        value = value - 1;
    }
    function mutate2() public {
        value = value + 1;
    }
    function call() public {
        mutate1();
        assert(uint(value) == 2);
        mutate2();
        assert(uint(value) == 4);
    }
}
