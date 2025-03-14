pragma solidity ^0.8.0;
contract Example20 {
    struct ExampleStruct12 {
        uint16 x;
        ExampleStruct12(uint16 x_) {
            x = x_;
        }
    }
    uint8 a;
    constructor(uint8 a_) {
        a = a_;
    }
    function getLength(ExampleStruct12 s) internal view returns (uint8) {
        return a;
    }
}
contract ArrayMath {
    function sum(uint16[] memory numbers) public view returns (uint16) {
        uint16 total = 0;
        for (uint i = 0; i < numbers.length; i++) {
            total += numbers[i];
        }
        return total;
    }
}
