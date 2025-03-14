pragma solidity ^0.8.0;
contract Mutate10 {
    uint initialBalance = 0;
    constructor() {
        initialBalance += 20;
        initialBalance -= address(this).balance;
    }
}
