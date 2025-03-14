pragma solidity ^0.8.0;
contract M8{
    uint public x;
    uint public y;
   ArrayStruct values;
    constructor() {
        x = 1000;
        y = 100;
        values = ArrayStruct(uint(0), uint(136), uint(1367));
    }
}
