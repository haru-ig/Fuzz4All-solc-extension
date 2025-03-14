pragma solidity ^0.8.0;
contract Array {
    uint[] public a = new uint[](2);
    constructor() {
    }
    function add() public {
    a.push(1);
    }
    function subtract() public {
    a.push(1);
    a.push(1);
    a.push(1);
    a.push(1);
    a.push(1);
    a.push(1);
    }
    function multiply() public {
    a.push(1);
    a.push(1);
    a.push(1);
    a.push(1);
    a.push(1);
    a.push(1);
    }
    function sum() public {
    a[0] = 1;
    a[1] = 2;
    a.push(3);
    }
    function getmin() public returns (uint) {
    return a[0];
    }
    function getmax() public returns (uint) {
    a.push(1);
    return a[2];
    }
    function getsum() public returns (uint) {
    a[0] = 0;
    a.push(0);
    a.push(0);
    a.push(0);
    return (a.pop() + a.pop() + a.pop());
    }
    function print() public {
    for (uint i = 0; i < a.length; i++) assert(a[i] < 4);
    uint total = a.length;
    if (total < 1) assert(a[0] == 0);
    a[0] = 0;
    a.push(0);
    a.push(0);
    a.push(0);
    uint sum = 1;
    for (uint i = 0; i < 10; i++) {
    sum += (a.pop() + a.pop() + a.pop() + a.pop());
    total -= (a.pop() + a.pop() + a.pop() + a.pop());
    }
    for (uint i = 0; i < a.length; i++) assert(a[i] == sum);
    sum = 0;
    total = 0;
    for (uint i = 0; i < 10; i++) {
    sum += (a.pop() + a.pop() + a.pop() + a.pop());
    total += (a.pop() + a.pop() + a.pop() + a.pop());
