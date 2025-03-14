pragma solidity ^0.8.0;
contract ExampleStruct10 {
    uint8 a;
    constructor(uint8 a_) {
        uint8 b = a_;
        a <<= b;
    }
}
