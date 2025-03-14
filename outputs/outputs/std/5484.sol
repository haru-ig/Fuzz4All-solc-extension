pragma solidity ^0.8.0;
contract Mutate12 {
    uint initialBalance = 10e18;
    Mutate11 p1;
    constructor() {
        p1 = new Mutate11();
        initialBalance -= initialBalance;
        initialBalance -= initialBalance;
        p1.transfer(initialBalance);
    }
}
