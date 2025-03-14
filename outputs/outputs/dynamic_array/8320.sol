pragma solidity ^0.8.0;
contract SemanticDifference {
    uint public a;
    uint public b;
    uint public maxA;
    uint public prevB;
    constructor() public {
        uint tempMax = 4;
        a = 3;
        b = tempMax;
        maxA = tempMax;
        prevB = b;
    }
    function myFunction() public {
        uint tempMax = 4;
        a = a + a;
        a = a + a;
        b = b + b;
        b = b + b;
        a = a + a;
        a = a + a;
        b = b + b;
    }
    function reverted_Function (uint b, uint a) public {
        uint tempMax = 4;
        a = b;
        uint result = b;
        prevB = a;


    }
}
