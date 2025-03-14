pragma solidity ^0.8.0;
contract Modifiers {
    uint constant x = 1e12;
    function test (uint x, address) public {
        assembly {
            x := sub(x, 32)
        }
    }
}

contract Modifiers {
    uint constant x = 1e12;
    function test (uint x, address) public {
        x = add(x, 32);
    }
}
