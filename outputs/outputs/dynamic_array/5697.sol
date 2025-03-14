pragma solidity ^0.8.0;
contract Test78 {
    uint[5] internal arr;
    constructor (uint _x) {
        arr = new uint[](_x);
    }
    struct A { function f(); }
}
