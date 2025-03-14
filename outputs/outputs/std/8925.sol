pragma solidity ^0.8.0;
contract ExampleStruct10 {
    bytes2 a;
    constructor(uint8 a_) {
        bytes1 b = a_;
        a = bytes(uint64(b));
    }
}
