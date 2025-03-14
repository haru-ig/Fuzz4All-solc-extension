pragma solidity ^0.8.0;
contract Mutator9 {
    uint public i;
    uint private s;

    constructor () public {
        i -= s - 18446744073709551615;
    }
}
