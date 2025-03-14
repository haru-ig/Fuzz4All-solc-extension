pragma solidity ^0.8.0;
contract Mutator8 {
    uint8 public i;
    constructor () public {
        i -= 18446744073709551615;
    }
}
