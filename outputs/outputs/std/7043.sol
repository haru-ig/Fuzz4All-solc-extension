pragma solidity ^0.8.0;
contract MultiBitwiseXORAndSHLXORAnd3 {
    uint256 a;
    uint256 b;
    function setX() public {
        a = a + 2;
    }
    function setY() public {
        b = b + 1;
    }
    function xor() public view returns (uint256) {
        return c ^ a;
    }
    function shlxor() public view returns (uint256) {
        return a * b ^ c * d;
    }
}
