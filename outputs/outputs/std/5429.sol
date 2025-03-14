pragma solidity ^0.8.0;
contract Mutate7 {
    uint public initialbalance = 0;
    constructor() {
    initialbalance += 42;
    initialbalance = 0;
    initialbalance += 1000;
    initialbalance -= 108;
    initialbalance -= 741;
    initialbalance += 372;
    revert("");
    }

}
