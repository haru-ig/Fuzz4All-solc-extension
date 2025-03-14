pragma solidity ^0.8.0;
contract OldMutated4{
    uint[] private a;
    address public b;
    bytes32 private d;
    constructor(){
        a = new uint[](1);
        a[0] = 1;
        d = bytes32(uint160(keccak256(abi.encode('\xe0', 123)))));

    }
    function mutation21() public returns (uint) {
        return a[0];
    }
    function mutation22() public returns (uint) {

        a[0]++;
        a[0]++;
        return a[1];
    }
    function mutation34() public returns (uint) {
        a[0]++;
        a[0]--;
        a[0]--;
        a[0]--;
        a[0]--;
        a[0]--;
        return a[1];
    }
    function mutation43() public returns (uint) {
        a[0]++;
        a[0]--;
        a[0]++;
        a[0]--;
        a[0
