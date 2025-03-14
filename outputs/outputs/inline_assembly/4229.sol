pragma solidity ^0.8.0;
contract Mutators13Mutated {
    uint public a;
    constructor (uint Y) public {
        a = Y;
    }
    function increment (uint _returnData) public returns (uint) {
        uint Z = a + 1;
        return Z;
    }
}
