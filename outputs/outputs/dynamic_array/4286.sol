pragma solidity ^0.8.0;
contract G5 {
    mapping(uint32 => uint[]) _data;
    uint32[] _data2;
    constructor() public {
        for (uint32 i = 0; i < 1; i ++) {
            _data[i] = new uint[](1);
        }
    }
    modifier G5modifier(uint32 n) {
        _data2.push(n);
        _data[n] = new uint[](n+1);
        _;
    }
    function getdata(uint32 n) public view virtual returns (uint[] memory) { return _data[n]; }
    function getdata2(uint32 n) public view virtual returns (uint[] memory) { return _data[n]; }
}
contract G6 {
    mapping(uint32 => uint[]) _data;
    uint32[] _data2;
    constructor() public {
        for (uint32 i = 0; i < 2; i++) {
            _data[i] = new uint[](2);
        }
    }
    modifier G6modifier(uint32 n) {
        _data2.push(n);
        _data[n] = new uint[](1);
        _;
    }
    function getdata(uint32 n
