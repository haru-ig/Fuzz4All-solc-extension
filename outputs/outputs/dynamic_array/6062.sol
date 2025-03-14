pragma solidity ^0.8.0;
contract Test29999Mutated2 {
    uint[] public data;
    uint[] data2;
    uint[] data3;
    uint[8] public value;
    constructor (uint_ _x) public {
        data = [_x];
        data2 = [0];
        data3 = [0,0,0,0,0,0,0,0];
        value[4] = _x;
    }
    fallback () external {
    }
}
