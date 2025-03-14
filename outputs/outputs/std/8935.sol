pragma solidity ^0.8.0;
contract ExampleStruct11 {
    uint8 a;
    constructor(uint8 a_) {
        uint8 len = a_;
        a = len;
    }
    function getLength(ExampleStruct11 s) public view returns (uint8) {
        uint8 length = s.a;
        return length;
    }
}
