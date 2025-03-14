pragma solidity ^0.8.0;
contract Mutate4 {
    uint initialBalance = 10e18;
    constructor() {
        initialBalance -= initialBalance;
        initialBalance += address(this).balance;
    }
}
contract Mutate16 {
    uint initialBalance = 10e18;
    constructor() {
        initialBalance += 0e18;
        initialBalance -= initialBalance;
    }
}
contract Mutate28 {
    uint initialBalance = 10e18;
    constructor() {
        initialBalance /= initialBalance;
        initialBalance += address(this).balance;
        initialBalance -= initialBalance;
    }
}
contract Mutate9 {
    uint initialBalance = 10e18;
    constructor() {
        initialBalance += initialBalance;
        initialBalance -= address(this).balance;
    }
}
