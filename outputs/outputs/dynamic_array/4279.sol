pragma solidity ^0.8.0;
contract G6 {
    enum State {

        Unknown,
        Calldata1,
        Calldata2,
        DynamicArrayCalldata
    }
    State _state;
    uint[] internal _data1;
    uint32 internal _data2;
    uint16 internal _d1;
    mapping(uint32 => uint[][]) data;
    mapping(uint32 => uint) d2;
    uint16[] _data3;
    constructor() public {
        _data1.push(5);
    }
```
