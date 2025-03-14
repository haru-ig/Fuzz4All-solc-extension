pragma solidity ^0.8.0;
contract Mutate9 {
    uint initialBalance = 10e18;
    constructor() {
        initialBalance += address(this).balance;
        initialBalance -= 10e27;
    }
}
