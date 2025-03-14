pragma solidity ^0.8.0;
contract Mutate12 {
    uint initialBalance = 10e18;
    constructor() {
        initialBalance -= int(initialBalance/initialBalance);
        initialBalance += address(this).balance;
        initialBalance += 0;
    }
}

pragma solidity ^0.8.0;
contract Mutate13 {
    uint initialBalance = 10e18;
    constructor() {
        initialBalance -= int(address(this).balance/address(this).balance);
        initialBalance += int(2**256);
        initialBalance += 0;
    }
}
