pragma solidity ^0.8.0;
contract BitwiseXORAndSHLXORAndMutated {
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
    function setX() internal {
        a = 8;
    }
    function getX() public view returns (uint256) {
        return a;
    }
    function setY() internal {
        b = 7;
    }
    function getY() public view returns (uint256) {
        return b;
    }
    function setZ() internal {
        c = 9;
    }
    function getZ() public view returns (uint256) {
        return c;
    }
    function setW() internal {
        d = 13;
    }
    function getW() public view returns (uint256) {
        return d;
    }
}
