pragma solidity ^0.8.0;
contract Modifiers {
    uint private x = 1;
    function test (uint x_) mutable public {
        assembly {
            mstore(0x50, x)
        }
    }
}
