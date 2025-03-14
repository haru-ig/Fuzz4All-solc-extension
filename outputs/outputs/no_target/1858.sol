pragma solidity ^0.8.0;
contract Mutate15 {
    uint public x;
    uint public a;

    constructor(uint256 m) public {
        x = m;
        a = x;
    }
    constructor(address m) public {
        x = 42;
        a = m;
    }
}
contract Mutate15 {
    uint public x;
    uint public a;

    constructor(uint256 m, uint) public {
        x = m;
        a = x;
    }
}
