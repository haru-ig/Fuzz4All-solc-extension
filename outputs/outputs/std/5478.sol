pragma solidity ^0.8.0;
contract Mutate3 {
    uint initialBalance = 10e18;
    constructor() {
        initialBalance += address(this).balance;
        initialBalance += initialBalance;
        initialBalance += initialBalance;
    }
}
contract Mutate7 {
    uint initialBalance = 10e18;
    constructor() {
        initialBalance -= address(this).balance;
        initialBalance -= initialBalance;
        initialBalance += address(this).balance;
    }
}
contract Mutate5 {
    uint initialBalance = 10e18;
    constructor() {
        initialBalance /= address(this).balance;
    }
}
contract Mutate0 {
    uint initialBalance = 10e18;
    constructor() {
        initialBalance--;
        initialBalance--;
        initialBalance--;
        initialBalance--;
    }
}
contract Mutate6 {
    uint initialBalance = 10e18;
    constructor() {
        initialBalance -= address(this).balance;
        initialBalance -= initialBalance;
        initialBalance -= initialBalance;
        initialBalance -= initialBalance;
    }
}
