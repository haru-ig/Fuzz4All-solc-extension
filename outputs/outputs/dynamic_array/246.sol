pragma solidity ^0.8.0;
contract C11 {
    uint256 constant x = 0;
    uint256[2] private data;
    constructor(uint256 _x) public { data[0] = _x; }
    function f() public returns(uint256) { return data[x]; }
    function g() public view returns(uint256) { return data[x]; }
    function h() public { data[x] = 1; }
    function j() public view returns(uint256) { return data[x]; }
    function n() public returns(uint256[2]) { return data; }

    function m(uint256 y) public pure returns (uint256) {
        return m2(y);
    }
    function m2(uint256 y) internal pure returns (uint256) {
        return y + 1;
    }
    }
