pragma solidity ^0.8.0;
contract Test35 {
    uint[] public arr;
    uint[] public arr2;
    uint i = 0;
    constructor(){
        arr.push(uint(0xff));
        uint24 k = keccak256(abi.encodePacked(i, uint(0xfffffffffffffffffff)));
        arr2 = sload(k);
    }
}
