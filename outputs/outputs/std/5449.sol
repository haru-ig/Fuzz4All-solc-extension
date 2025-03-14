pragma solidity ^0.8.0;
contract Mutate11 {
    uint initialBalance = 10 ether;
    constructor() {
        initialBalance -= address(this).balance;
        initialBalance += 10;
    }
}
