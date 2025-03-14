pragma solidity ^0.8.0;
contract Mutated {
    function printMultiples(uint x) public pure {
        printMultiples(-1, x);
        printMultiples(1, x);
        printMultiples(0, x);
    }
}
