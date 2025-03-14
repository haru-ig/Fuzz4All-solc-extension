pragma solidity ^0.8.0;
contract Transformed4 is Mutated4{
    uint[] public a;
    uint[5] public x;
    uint constant K = 5;
    uint constant N = 8;
    uint constant A;
    uint constant B;
    uint constant C;
    uint constant D;
    uint constant E;
    uint[] constant Y = [8, 15, 18, 21, 24, 27];
    uint constant O;
    uint public r;
    function mutated21() public returns (uint) {
        return a[0];
    }
    function mutated22() public returns (uint) {
        x[0] += a[0];
        return a[1];
    }
    function mutated34() public returns (uint) {
        x[0] += a[1];
        x[0] -= a[0];
        return a[2];
    }
    function mutated43() public returns (uint) {
        x[0] += a[0];
        x[0] -= a[1];
        x[0] += a[2];
        x[0] -= a
