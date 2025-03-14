pragma solidity ^0.8.0;
contract Test35 {
    uint[] public arr;
    uint[] internal arr2;
    constructor(){
        for(uint i = 0;i < 256;i++){
            arr.push(uint(-9223372036854775809));
        }
        for(uint i = 0;i < 256;i++){
            arr.push(uint(0xfffffffffffffffffff));
        }

    }
}
