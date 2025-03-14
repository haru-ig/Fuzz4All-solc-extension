pragma solidity ^0.8.0;
contract Test35 {
    uint[] public arr;

    uint[] internal arr2;

    constructor(){
        arr.push(uint(0xfffffffffffffffffff));
    }
}
