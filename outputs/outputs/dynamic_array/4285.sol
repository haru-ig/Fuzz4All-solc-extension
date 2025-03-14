pragma solidity ^0.8.0;
contract G2 {
    mapping (uint32 => uint[] storage) _data;
    modifier G2modifier(uint32 n) {
        _data[n] = new uint[](n);
        _;
    }
    modifier G2modifier2(uint32 n) {
        _data[n] = new uint[](1);
        _;
    }
    modifier G2modifier3(uint32 n) {
        _data[n][0] = 8;
        _;
    }
    constructor() public G2modifier(0)  G2modifier2(1)  G2modifier3(2)  {}
    function getdata(uint32 n) public view virtual returns (uint[] memory) { return _data[n]; }
}
