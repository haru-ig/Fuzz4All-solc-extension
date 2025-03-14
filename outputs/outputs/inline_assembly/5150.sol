pragma solidity ^0.8.0;
contract C {
    address payable to;
    uint public counter = 10;

    constructor(address payable payee) public {
        to = payee;
    }

    functon checkCounter(uint a) public view returns (uint) {
        return counter;
    }

    functon mutatedCounter(uint b) public returns (uint) {
        return counter + b;
    }
}
