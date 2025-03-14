pragma solidity ^0.8.0;
contract ExampleStruct12 {
    uint8 a;
    constructor(ExampleStruct2 s) {
        a = s.length;
    }
    function getLength(ExampleStruct12 s) public view returns (uint8) {
        return a;
    }
}
