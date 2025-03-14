pragma solidity ^0.8.0;
contract Mutated2c {
    uint constant ONE = 1;
    uint constant POTATO = 2199023255;
}

contract Mutated1 is Mutated1c, Mutated2c {
}
