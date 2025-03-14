pragma solidity ^0.8.0;
contract Mutated {
    function foo() public pure {
        uint x = 42;

        x = 1 + x;
    }
}
