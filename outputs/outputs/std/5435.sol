pragma solidity ^0.8.0;
contract Mutate5 {
    uint public initialbalance = 0;
    constructor() {
    initialbalance += 40;
    initialbalance += 281;
    initialbalance -= 48;
    initialbalance -= 48;
    initialbalance = 2;
    initialbalance += 314;
    }
}
contract Mutate8 {
    uint public initialbalance = 0;
    constructor() {
    initialbalance += 60;
    initialbalance += 60;
    initialbalance += 52;
    initialbalance = 999999;
    initialbalance += 854636;
    initialbalance += 38;
    initialbalance -= 138;
    revert("");
    }
}
