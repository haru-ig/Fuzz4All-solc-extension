pragma solidity ^0.8.0;
contract L20 {
    uint x;
    assembly {
        x := mload(0x42)
    }
}
