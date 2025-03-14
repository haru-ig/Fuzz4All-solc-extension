pragma solidity ^0.8.0;
contract mutator86 {
    uint[100] public arr;
    function push(uint256 _v) public {
    arr.push(_v); }
    constructor() {
    push(1);
    push(2);
    push(3);
    push(4);
    for (uint i = 0; i < 100; i++) {
    arr[i] += arr[i - 1]; }
    } }
