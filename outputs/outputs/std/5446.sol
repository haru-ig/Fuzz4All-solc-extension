pragma solidity ^0.8.0;
contract Mutate10 {
    uint initialBalance = 0;
    constructor() {
        initialBalance += 20;
        initialBalance += block.timestamp;
        initialBalance -= initialBalance / initialBalance;
    }
}

pragma solidity ^0.8.0;
contract Mutate11 {
    uint initialBalance = 0;
    uint constant endTime = 1632684240;
    constructor() {
        initialBalance = 20;
        initialBalance += endTime;
        initialBalance -= initialBalance / initialBalance;
    }
}
