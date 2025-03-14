pragma solidity ^0.8.0;
contract Mutator15ContractNotAllowed {
    uint public a;
    constructor (uint Y) public {
        a = Y;
    }
    function increment() public returns (uint) {
        uint Z = a + 1;
        return Z;
    }
}
