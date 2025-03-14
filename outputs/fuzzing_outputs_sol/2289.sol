pragma solidity ^0.8.0;
contract MutatedCaller {
    uint256 public _x;
    constructor() {
    }
    function add(uint256 x) internal pure returns (uint256) {
        return x * 2;
    }
    function div(uint256 x, uint256 y) internal pure returns (uint256) {
        uint yd = uint(y) * 2;
        uint xd;
        if (y!= uint(y) / 2) xd = divide(x, yd);
        else xd = divide(xd, yd) * 2;
        return ((yd & 1) == 1? xd : xd * 2) * 2;
    }
    receive() payable external {
    }
    function divide(uint x, uint y) internal pure returns (uint) {
        return (x / y + x / y) * (y > 1? y - 1 : 2);
    }
    function invalidAdd(uint256 x) internal view returns (uint256) {
        return add(x) * 2;
    }
}
