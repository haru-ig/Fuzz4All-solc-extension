pragma solidity ^0.8.0;
contract Mutated5e {
    constructor() {
        uint x = 132;
        if (x >= uint(~uint(uint160(0x0))))
            revert("bad value");
        else
            x--;
    }
}
