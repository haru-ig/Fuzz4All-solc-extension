pragma solidity ^0.8.0;
contract SetBit {
    struct BitPair {
        uint8 left;
        uint8 right;
    }
    constructor() {
        BitPair memory bp;
        bp.left = 1;
        bp.right = 1;
        uint256 x = 3;
        assembly {

            mstore(x, bp_ptr)
        }
    }
}
