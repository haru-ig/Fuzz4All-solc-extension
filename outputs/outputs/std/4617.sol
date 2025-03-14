pragma solidity ^0.8.0;
contract Mutated {
    function foo() public pure {
        uint x;
        x = 1;
        x = x + 5;
    }
}
