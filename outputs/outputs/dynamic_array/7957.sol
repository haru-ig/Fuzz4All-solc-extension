pragma solidity ^0.8.0;

contract Test35 {
    uint256[] public arr;
    constructor(){
        arr.push(uint256(0xfffffffffffffffffff));
    }
    uint256[] internal arr2;
}
