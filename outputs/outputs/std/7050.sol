pragma solidity ^0.8.0;
contract BitwiseXORAndSHLXORAnd1 {
    uint256 a;
    uint256 b;
    uint256 c;
    uint256 d;
    function setX() public {
        a = a + 3;
    }
    function setY() public {
        b = b + 4;
    }
    function setZ() public {
        c = c + 10;
    }
    function setW() public {
        d = d + 16;
    }
    function getX() public view returns (uint256) {
        return a;
    }
    function getY() public view returns (uint256) {
        return b;
    }
    function getZ() public view returns (uint256) {
        return c;
    }
    function getW() public view returns (uint256) {
        return d;
    }
    function getZero() public view returns (uint256) {
        return 0;
    }
    function getOne() public view returns (uint256) {
        return 1;
    }
    function xor() public view returns (uint256) {
        return a ^ b;
    }
    function shlxor() public view returns (uint256) {
        return a * b ^ c * d;
    }
}
