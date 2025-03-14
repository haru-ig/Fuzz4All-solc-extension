pragma solidity ^0.8.0;
contract H3 {
    mapping(uint32 => uint[]) _data;
    modifier H3modifier(uint32 n) {
        _data[n] = new uint[](n);
        _;
    }
    modifier H3modifier2(uint32 n) {
        _data[n] = new uint[](1);
        _;
    }
    modifier H3modifier3(uint32 n) {
        _data[n][0] = 8;
        _;
    }
    constructor() public H3modifier(0)  H3modifier2(1)  H3modifier3(2)  {}
    function getdata(uint32 n) public virtual view returns (uint[] memory) { return _data[n]; }
}
contract H4 {
    mapping(uint32 => uint[]) _data;
    modifier H4modifier(uint32 n) {
        _data[n] = new uint[](n);
        _;
    }
    modifier H4modifier2(uint32 n) {
        _data[n] = new uint[](1);
        _;
    }
    modifier H4modifier3(uint32 n) {
        _data[n][0] = 8;
        _;
    }
    modifier H4modifier4(
