pragma solidity ^0.8.0;
contract Mutate32 {
    uint initialBalance = 10e18;
    constructor() {
        initialBalance += initialBalance;
        initialBalance -= address(this).balance;
        initialBalance /= initialBalance;
    }
}
contract Mutate56 {
    uint initialBalance = 10e18;
    constructor() {
        initialBalance += 0e18;
        initialBalance -= initialBalance;
        initialBalance /= initialBalance;
    }
}
contract Mutate72 {
    uint initialBalance = 10e18;
    constructor() {
        initialBalance += initialBalance;
        initialBalance /= initialBalance;
        initialBalance += address(this).balance;
    }
}
