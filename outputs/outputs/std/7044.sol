pragma solidity ^0.8.0;
contract BitwiseXORandSHLXORAnd3 {
    uint256 a;
    uint256 b;
    uint256 c;
    uint256 d;
    function setX() public {
        a = 10 * 1000;
    }
    function setY() public {
        b = 2009;
    }
    function setZ() public {
        c = 105;
    }
    function setW() public {
        d = 2 * 10;
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
        return c ^ a;
    }
    function shlxor() public view returns (uint256) {
        return 2009 * 105 + 2 * 10 ^ (a, b) ^ ((10 + a) * b);
    }
}
