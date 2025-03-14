pragma solidity ^0.8.0;
contract Mutate8 {
    uint public initialbalance = 0;
    constructor() {
    initialbalance += 20;
    initialbalance += 90;
    initialbalance += 745;
    initialbalance -= 811;
    initialbalance = 1;
    initialbalance -= 629;
    revert("");
    }
}
