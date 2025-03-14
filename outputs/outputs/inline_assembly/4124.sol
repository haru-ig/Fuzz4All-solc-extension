pragma solidity ^0.8.0;
contract Modifiers {
    uint constant x = 1e12;
    function test1 (uint y, uint x) public {

        x := add(y,x)
    }
}
