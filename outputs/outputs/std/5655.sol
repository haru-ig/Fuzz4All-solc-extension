pragma solidity ^0.8.0;
contract M8{
    uint public x;
    uint public y;
    ArrayStruct data;
    constructor() {
        x = 1000;
        y = 128;
        data.x = uint(0);
        data.y = uint(42);
        data.z = uint(1367);
        values[42] = data;
    }
}
