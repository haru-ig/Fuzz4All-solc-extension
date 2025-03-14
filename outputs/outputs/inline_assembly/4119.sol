pragma solidity ^0.8.0;
contract Modifiers {
    uint x = 2e12;
    function test () public {
        assembly {
            x := add(x, 32)
        }
    }
}
