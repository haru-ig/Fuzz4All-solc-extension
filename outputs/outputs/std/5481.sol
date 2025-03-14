pragma solidity ^0.8.0;
contract Mutate12 {
    uint initialBalance = 10e18;
    constructor() public {
        initialBalance /= 2;
        initialBalance *= address(this);
        initialBalance %= 10e17;
        initialBalance++);
        initialBalance -= 1;
    }
}
