pragma solidity ^0.8.0;
contract Mutate12 {
    uint public initialbalance = 1000000 * 1000^18;
    constructor() {
        initialbalance = (initialbalance * 10 + initialbalance) / 2 + initialbalance;
    }
}
