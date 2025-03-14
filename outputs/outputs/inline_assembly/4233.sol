pragma solidity ^0.8.0;
contract Mutators13Mutated {
    uint public a;
    uint public x;
    uint public y;
    constructor () public {
        x = 100;
        a = 3;
        y = 5;
    }
    function increment (uint _returnData) public returns (uint) {
        uint Z = multiply(x) / add(y);
        return Z;
    }
    function incrementWith(uint _returnData) public returns (uint) {
        uint Z = x + y;
        a = _returnData;
        return Z;
    }
}
