pragma solidity ^0.8.0;
contract M8{
    uint public x1;
    uint public y1;
    uint public x2;
    uint public y2;
    uint public x3;
    uint public y3;
    uint public x4;
    uint public y4;
    uint public x5;
    uint public y5;
    uint public values[6] = [2000, 128, 360, 170, 1290, 5];
    ArrayStruct[] public array;
    constructor() {
        x1 = 1000; y1 = 128; x2 = 2000; y2 = 32; x3 = 360; y3 = 170; x4 = 1290; y4 = 5; x5 = 52988; y5 = 8669;
        for (uint z = 0; z < uint(values.length); z++) array.push(ArrayStruct(values[0]));
    }
}
