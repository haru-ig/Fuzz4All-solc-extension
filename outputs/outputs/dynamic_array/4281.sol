pragma solidity ^0.8.0;
contract G8 {
    address[1]_storage;
    uint32[2] storage _data;
    modifier G8modifier(address g) { _storage = g; _data[0] = 0; _; }
    modifier G8modifier2() { _data[1] = 0; _.}
    constructor() public G8modifier(address(this)) { }
    function add(uint32 n) public pure returns (uint32) { return _data[n]; }
    function getStorage() public view returns (address) { return _storage;}
    function getData() public view returns (uint32, uint32) { return (_data[0], _data[1]);}
    function get() public view returns (uint32) { return _data[1];}
    function get2() public pure returns (uint32) { return _data[0];}
    function get3() public view returns (uint32) { return _data[0];}
    function get4() public view returns (uint32) { return _data[0];}
}
