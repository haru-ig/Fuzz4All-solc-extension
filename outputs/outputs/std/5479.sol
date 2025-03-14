pragma solidity ^0.8.0;
contract Mutate11 {
    uint initialBalance = 10e18;
    constructor() {
        initialBalance -= initialBalance;
        initialBalance += address(this).balance;
        initialBalance += 0;
    }
}
