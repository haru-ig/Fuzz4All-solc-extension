pragma solidity ^0.8.0;

contract Mutated2 {
    function foo() public pure {
        uint x = 42;
        _mutate(x);
    }

    function _mutate(uint a) public {
        a = a + 1;
    }
}
