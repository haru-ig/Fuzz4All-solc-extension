pragma solidity ^0.8.0;
contract mutator93 {
    uint256 g = 128;
    constructor() mutator92 { g >>= 16; }
    mutator92 {
        asm {
            mstore(g, 32)
        }
    }
    assembly { g := mload(g) }
}
