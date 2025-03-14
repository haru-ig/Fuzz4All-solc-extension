pragma solidity ^0.8.0;
contract Mutate14 {
    uint initialBalance = 10e18;
    constructor() {
        initialBalance += address(this).balance;
        initialBalance -= initialBalance;
    }
}
