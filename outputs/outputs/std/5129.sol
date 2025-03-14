pragma solidity ^0.8.0;
contract Semantics3 is Semantics2 {
    function f(uint a, uint b, uint) public pure { return a + b - 5; }
}
