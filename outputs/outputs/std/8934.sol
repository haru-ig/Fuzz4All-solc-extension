pragma solidity ^0.8.0;
contract ExampleStruct11 {
    uint8 a;
    constructor(uint8 a_) {
        a = a_;
    }
    function getLength(ExampleStruct11 s) public view returns (uint8) {
        return a;
    }
}
