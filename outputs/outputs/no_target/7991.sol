pragma solidity ^0.8.0;
contract Mutator9 {
    uint public i;
    constructor () public {
        i = (i + 1);
        i += 61;
        i >>= 1;
        i &= ~0xffffffff;
        i >>= 1;
    }
}
