pragma solidity ^0.8.0;
contract BitwiseXORAndSHLXORAnd3 {
    uint256 a;
    uint256 b;
    uint256 c;
    uint256 d;
    function setX() public {
        a = a + 1;
    }
    function setY() public {
        b = b + 0;
    }
    function setZ() public {
        c = c - 3;
    }
    function setW() public {
        d = d - 7;
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
    function xor() public view returns (uint256) {
        return a ^ c;
    }
    function shlxor() public view returns (uint256) {
        return a * b ^ c * d;
    }
}
