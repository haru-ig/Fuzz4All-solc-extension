pragma solidity ^0.8.0;
contract G8 {
    mapping(uint32 => uint[]) _data1;
    mapping(uint32 => uint[]) _data2;
    modifier G8modifier(uint32 n) {
        _data1[n] = new uint[](n);
        _data2[n] = new uint[](n);
        _;
    }
    constructor() public G8modifier(0)  G8modifier(1)  G8modifier(0)  G8modifier(1)  G8modifier(1)  G8modifier(1)  G8modifier(1)  G8modifier(1)  {}
    function getData1(uint32 n) public view virtual returns (uint[] memory) { return _data1[n]; }
    function getData2(uint32 n) public view virtual returns (uint[] memory) { return _data2[n]; }
}
contract G9 {
    mapping(uint32 => uint[]) _data1;
    mapping(uint32 => uint[]) _data2;
    mapping(uint32 => uint[]) _data3;
    mapping(uint32 => uint[]) _data4;
    mapping(uint32 => uint[]) _data5;
    modifier G9modifier(uint32 n) {
