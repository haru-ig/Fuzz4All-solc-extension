pragma solidity ^0.8.0;
contract Mutator6 {
    uint immutable constant max = ~(uint(-1));
    uint public i;
    constructor () public {
        i = max;
    }
}
