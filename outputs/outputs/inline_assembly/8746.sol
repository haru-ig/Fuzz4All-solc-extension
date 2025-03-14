pragma solidity ^0.8.0;
contract Test {
    bytes4 constant EMPTY_BYTES4 = bytes4(0x00);

    bytes public pure emptyByteArray_;

    constructor() {
        emptyByteArray_ = "Absolutely nothing.";
    }
}
