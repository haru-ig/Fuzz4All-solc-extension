pragma solidity ^0.8.0;
contract Mutate12 is Mutate10 {
    uint initialBalance = 0;
    constructor() {
        initialBalance = address(this).balance;
        initialBalance -= initialBalance;
        initialBalance += address(this).balance;
        initialBalance -= initialBalance;
    }
}
