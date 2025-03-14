pragma solidity ^0.8.0;
contract Mutate11 {
    uint internal initialBalance;
    constructor () {
        initialBalance = 2;
        address(0).balance += initialBalance;
        initialBalance -= 5;
    }
}
