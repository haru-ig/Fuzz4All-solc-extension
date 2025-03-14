pragma solidity ^0.8.0;
contract Mutate13 {
    uint initialBalance = 10 ether;
    uint public immutable value;
    constructor() {
        initialBalance += address(this).balance;
        initialBalance -= 10;
        value = 100;
    }
}
