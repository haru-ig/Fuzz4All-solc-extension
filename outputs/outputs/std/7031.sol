pragma solidity ^0.8.0;
contract BitwiseXORAndSHLXORAnd {
    uint256 a;
    uint256 b;
    uint256 c;
    uint256 d;
    function setA() internal {
        a = 3;
    }
    function getA() public view returns (uint256) {
        return a;
    }
    function setB() internal {
        b = 4;
    }
    function getB() public view returns (uint256) {
        return b;
    }
    function setC() internal {
        c = 10;
    }
    function getC() public view returns (uint256) {
        return c;
    }
    function setD() internal {
        d = 16;
    }
    function getD() public view returns (uint256) {
        return d;
    }
    function xor() public view returns (uint256) {
        uint256 temp = c & ~a;
        return (temp << a) | (temp >> (256 - b));
    }
    function shlxor() public view returns (uint256) {
        uint256 temp = a * b;
        return (temp << c) | (temp >> (256 - d));
    }
    function setX() internal {
        a = 8;
    }
    function getX() public view returns (uint256) {
        return a;
    }
    function setY() internal {
        b = 7;
    }
    function getY() public view returns
