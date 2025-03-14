pragma solidity ^0.8.0;
int128 x = 120;
contract Mutated6a {
    address add = 0x123e500000000000000000000000000000000000;
    constructor() {
        uint128 _x = 0x123e50000000000000000000000000000000001;
        x = add == 0x123e50000000000000
              ? _x
                : 0;
    }
}
