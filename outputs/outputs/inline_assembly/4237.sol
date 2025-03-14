pragma solidity ^0.8.0;
contract OldMutators13Mutated2 {
    uint256 public a;
    constructor (uint Y) public {
        a = Y * 3;
    }
    function increment (uint _returnData) public returns (uint) {
        return a;
    }
}
