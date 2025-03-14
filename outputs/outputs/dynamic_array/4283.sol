pragma solidity ^0.8.0;
contract G8 {
    mapping(uint32 => uint[]) _data;
    modifier G8modifier(uint32 n) {
        uint[] memory copy = _data[n];
        uint[] memory newdata = new uint[](n + copy.length * 2);
        newdata.copy(copy, 0, copy.length);
        _data[n] = newdata;
        _;
    }
    constructor() public G8modifier(0)  {}
}
contract G9 {
    modifier G9modifier(uint32 n) {
        uint[] memory copy = _data[n];
        uint[] memory newdata = new uint[](n + copy.length * 2);
        newdata.copy(copy, 0, copy.length);
        _data[n] = newdata;
        _;
    }
    modifier G9modifier_copy(uint32 n) {
        uint[] memory copy = _data[n];
        uint[] memory newdata = new uint[](copy.length * 2);
        newdata.copy(copy, 0, copy.length);
        _data[n] = newdata;
        _;
    }
    constructor() public G8modifier(0)  {}
}
/** Please create a long program that uses a
