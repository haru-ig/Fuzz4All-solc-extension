pragma solidity ^0.8.0;
contract Test35 {
    uint[] public arr;
    uint i = 0;
    constructor(uint value) {
        arr.push(value);
        require(arr[1] == uint(0));
    }
}
