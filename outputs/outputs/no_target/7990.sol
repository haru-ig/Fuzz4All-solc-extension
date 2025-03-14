pragma solidity ^0.8.0;
contract Mutator9 {
    uint public i;
    constructor () public returns (uint) {
        i -= 18446744073709551615;
    }
}
