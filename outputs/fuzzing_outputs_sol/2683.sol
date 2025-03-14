pragma solidity ^0.8.0;

contract Mutated {
    uint public value;

    function set(uint x) public {
        value = x;
    }

    function call() public {
        set(value + 1);
        assert(value == 2);
    }
}
pragma solidity ^0.8.0;

contract InheritanceMutated {
    uint public value;

    constructor (uint _value1) {
        value = _value1;
    }

    function mutate() public {
        value = value + 1;
    }

    function call() public {
        mutate();
        assert(uint(value) == 2);
    }
}
