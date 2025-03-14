pragma solidity ^0.8.0;
contract Test35 {
    uint[256] public arr;
    uint i = 0;
    constructor(){
        uint x = uint(0xfffffffffffffffffff);
        arr[i] = x;
    }
}
