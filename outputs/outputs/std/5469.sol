pragma solidity ^0.8.0;
contract Mutate12 {
    uint initialBalance = 10e18;
    constructor() {
        initialBalance += address(this).balance;
        initialBalance -= initialBalance;
    }
}
contract Mutate13 {
    uint initialBalance = 10e18;
    constructor() {
        initialBalance += address(this).balance;
        initialBalance -= initialBalance;
    }
}
