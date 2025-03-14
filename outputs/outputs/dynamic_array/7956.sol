pragma solidity ^0.8.0;
contract Test36 {
    uint[] public arr;
    constructor(){
        arr = new uint[](10);
        arr[1] = uint(0xfffffffffffffffffff);
    }
}
