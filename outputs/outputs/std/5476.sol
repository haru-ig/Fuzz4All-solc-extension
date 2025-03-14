pragma solidity ^0.8.0;
contract Mutate3 {
    uint initialBalance = 10e18;
    constructor() {

        if (initialBalance < 10e18) {
            initialBalance /= initialBalance;
        }

        if (initialBalance >= address(this).balance) {
            initialBalance -= initialBalance;
        }
    }
}
