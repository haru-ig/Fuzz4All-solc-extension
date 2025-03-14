pragma solidity ^0.8.0;
contract BitwiseXORAndSHLXORAnd2 {
    uint256 c;
    uint256 d;
    uint256 constant a = 2;
    uint256 constant b = 3;
    function setX() public {
        c = c + a;
    }
    function setY() public {
        d = d + b;
    }
    function getX() public view returns (uint256) {
        return c;
    }
    function getY() public view returns (uint256) {
        return d;
    }
    function xor() public view returns (uint256) {
        return a ^ b;
    }
    function shlxor() public view returns (uint256) {
        return a * b ^ c * d;
    }
}
