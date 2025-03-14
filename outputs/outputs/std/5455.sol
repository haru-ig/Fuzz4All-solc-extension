pragma solidity ^0.8.0;

contract Mutate13 {
    uint amount = 1000;
    uint balance1 = 0;
    uint balance2 = address(this).balance;
    constructor() {
        balance1 += amount;
        balance2 -= 1000;
    }
}
