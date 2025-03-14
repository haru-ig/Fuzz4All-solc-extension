pragma solidity ^0.8.0;
contract G9 {
    mapping(uint[] => uint32[]) _data;
    uint32 i;
    modifier G9modifier(uint n) {
        _data[n].push(i);
        _;
    }
    constructor() public G9modifier(30)  {}
    function getdata(uint n) public view virtual returns (uint32[] memory) { return _data[n]; }
}
