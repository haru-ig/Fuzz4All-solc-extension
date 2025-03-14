pragma solidity ^0.8.0;
contract Mutator8 {
    uint public i;
    constructor () public {
        i -= 18446744073709551615;
    }
}
