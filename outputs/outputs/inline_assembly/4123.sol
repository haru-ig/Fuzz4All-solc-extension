pragma solidity ^0.8.0;
contract Modifiers {
    uint constant x = 1;
    function test (uint x) public {
        assembly {
            if gt(x, 99) {
                mstore(0x50, x)
            }
        }
    }
}
