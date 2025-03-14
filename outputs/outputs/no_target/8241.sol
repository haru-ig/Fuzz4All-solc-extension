pragma solidity ^0.8.0;
contract Mutated2b {
    uint constant ONE = 1;
    uint constant TWO = 2;
}

pragma solidity ^0.8.0;
contract Mutated2c {
    uint constant ONE = 1;
    uint constant TWO = 2;


    Mutated2b _m2();
    Mutated2b _m2();
}
