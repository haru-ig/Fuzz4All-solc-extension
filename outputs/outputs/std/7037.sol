pragma solidity ^0.8.0;
contract BitwiseXOR {
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
        return (a^b)^c;
    }
}

pragma solidity ^0.8.0;
contract BitwiseANDAnd {
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
