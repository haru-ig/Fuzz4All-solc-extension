pragma solidity ^0.8.0;
contract Mutate9 {
    uint public initialbalance = 0;
    constructor() {
        initialbalance += 20;
        initialbalance += 90;
        initialbalance += 745;
        initialbalance -= 811;
        initialbalance -= 629;
    }
}
