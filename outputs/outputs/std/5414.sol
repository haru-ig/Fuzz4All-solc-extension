pragma solidity ^0.8.0;
contract Mutate13 {
    uint public initialbalance = 1000000 * 1000^18;
    constructor() public {
        initialbalance = (initialbalance * 10 + initialbalance) / 2 - 1;
    }
}
contract Mutate14 {
    uint[] storage initialbalances = [1000000 * 1000^18, 1000000 * 1000^18, 1000000 * 1000^18, 1000000 * 1000^18];
    constructor() public {
        for(uint i = 0; i < initialbalances.length; i++) {
            initialbalances[i] = (initialbalances[i] * 10 + initialbalances[i]) / 2 - 1;
        }
    }
}
