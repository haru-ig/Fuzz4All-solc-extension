pragma solidity ^0.8.0;
contract Modifiers128x64 {
    uint constant x = 1e12;
    function test (uint x, uint) public {
        assembly {
            mstore(x, mul(x, 128))
        }
    }
}
