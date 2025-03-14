pragma solidity ^0.8.0;
contract MutatedSemantics {
    function f(uint a, uint b, uint c, uint d) public pure {
    }
    function f2(address, uint) public pure {
    }
}
