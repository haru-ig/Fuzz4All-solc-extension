pragma solidity ^0.8.0;
contract Mutate9 {
    uint public initialbalance;
    constructor() {
        initialbalance += 1;
        initialbalance += 1;
        initialbalance += 1;
        initialbalance += 1;
        initialbalance -= 1;
        initialbalance -= 1;
        initialbalance -= 1;
        initialbalance -= 1;
    }
}
