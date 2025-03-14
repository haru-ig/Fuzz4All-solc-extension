pragma solidity ^0.8.0;
contract SemanticsMissingXulMutantContract2 {
    constructor () {
    }
    function g() public {
        uint x;
        uint y;
        uint z;
        assembly {
            mstore(0x1, 0xcc)
            mstore(0x2, 0xed)
            mstore(0x0, 0x00)
            mstore(0x3, 0x00)
            mstore(0x4, 0x00)
            mstore(0x5, 0x00)
            mstore(0x6, 0x00)
            mstore(0x7, 0x00)
            mstore(0x8, 0x00)
            mstore(0x9, 0x00)
            mstore(0xa, 0x00)
            mstore(0xb, 0x00)
            mstore(0xc, 0x00)
            mstore(0xd, 0x00)
            mstore(0xe, 0x00)
            mstore(0xf, 0x00)
            mstore(0x4e, 0x01)
            mstore(0x3, 0xee)
            mstore(0x4a, mload(0x4e))
            mstore(32 + 0, 0x01)
            mstore(32 + 1, 0xFF)
        }
        c();
    }
    function c() public pure {
    }
}
