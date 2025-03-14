pragma solidity ^0.8.0;
contract C {
    uint[] public data2;
    constructor() {
        data2 = new uint[](1);
        data2.push(1);
        for(uint i = 0; i < data2.length; i++){data2[i] = 10 * i;}
        for(uint i = 0; i < data2.length; i++){data2[i + 1] = 10 * i + 1;}
        data2.push(data2.length + 1);
    }
}
