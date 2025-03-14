pragma solidity ^0.8.0;
contract Modifiers {
    uint constant x = 1e12;
    function test (uint x, uint) public {
        assembly {
            x := add(x, 32)
        }
    }
}
