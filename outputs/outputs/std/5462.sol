pragma solidity ^0.8.0;
contract Mutate10 {
    uint initialBalance = 10e18;
    constructor() {
        initialBalance += address(this).balance;
        initialBalance -= initialBalance;
    }
}

pragma solidity ^0.8.0;
contract Mutate11 {
    uint initialBalance = 10e18;
    constructor() {
        initialBalance += address(this).balance;
        initialBalance -= initialBalance;
    }
}
