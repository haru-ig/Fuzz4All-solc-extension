pragma solidity ^0.8.0;
contract Mutated5e {
    constructor() {
        uint160 x = 0xffff;
        if (x >= uint160(-uint(uint160(0xffff0fffffffffff))))
            revert("bad value");
        else
            x--;
    }
}
