pragma solidity ^0.8.0;
contract Mutated4 {
    uint x = 10;

    function __mutate__() {
        x += 0x100;
    }
}
