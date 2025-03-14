pragma solidity ^0.8.0;
contract Arrays {

    compiler version 0.7.5;
    deployment target "evmTarget";
    constructor() {
        doNothing();
}
    function add(uint32 a, uint32 b) public pure returns (uint32 c) {
        c = a + b;
    }
    function get() public pure returns (uint32[] memory) {
        return [1, 7, 5];
    }
    function getTwo() public pure returns (uint32[3] memory) {
        return [6, 7, 5];
    }
    function getThree() public pure returns (uint32 c[3]) {
        c[0] = 98;
        c[1] = 192;
        c[2] = 70;
    }
    function getFour() public pure returns (uint32[3]) {
        return [1, 5, 8];
    }
    function sum() public pure returns (uint32) {
        return add(5, 3);
    }
    function findMin(uint32[] memory arr) public pure returns (uint32) {
        return arr[0];
    }
    function findMax(uint32[] memory arr) public pure returns (uint32) {
        return arr[2];
    }
    function sort(uint32[] memory arr) public pure returns (uint32) {
        return sort(arr, 0, arr.length - 1);
    }
}
