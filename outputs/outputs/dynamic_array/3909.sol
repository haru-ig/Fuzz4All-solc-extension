pragma solidity ^0.8.0;
contract C {
    uint[3][3] a;
    uint[2][2] b;
    constructor (uint[3][3] memory ain, uint[2][2] memory bin) public { a = ain; b = bin; ( b = a ); }
}
