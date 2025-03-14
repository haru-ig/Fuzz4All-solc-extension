pragma solidity ^0.8.0;
contract G8 {
    mapping(uint32 => uint[]) _data;
    modifier G8modifier(uint32 n) {
        _data[n].push(8);
        _;
    }
    constructor() public  G8modifier(2)  {}
    function getdata(uint32 n) public view virtual returns (uint[] memory) { return _data[n]; }
}
