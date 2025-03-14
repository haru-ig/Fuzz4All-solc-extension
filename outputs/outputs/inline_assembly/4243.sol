pragma solidity ^0.8.0;
contract Mutators16Mutated2 {
    uint public a;
    constructor (uint Y) public {
        a = Y * 3;
    }
    function increment (uint _returnData) public returns (uint) {
        a += 4;
        _returnData = a;
        return a;
    }
}
