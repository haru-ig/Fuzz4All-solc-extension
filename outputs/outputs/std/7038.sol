pragma solidity ^0.8.0;
contract BitwiseXORAndSHLXORAndMutated {
    uint256 public a;
    uint256 constant aMut;
    uint256 public b;
    uint256 constant bMut;
    uint256 public c;
    uint256 constant cMut;
    uint256 public d;
    uint256 constant dMut;
    uint256 public e;
    uint256 constant eMut;
    uint256 public f;
    uint256 constant fMut;
    uint256 public g;
    uint256 constant gMut;
    function setA() internal {
        a = 3;
        aMut = 4;
    }
    function getA() public view returns (uint256) {
        return a;
    }
    function setB() internal {
        b = 4;
        bMut = 5;
    }
    function getB() public view returns (uint256) {
        return b;
    }
    function setC() internal {
        c = 10;
        cMut = 11;
    }
    function getC() public view returns (uint256) {
        return c;
    }
    function setD() internal {
        d = 16;
        dMut = 17;
    }
    function getD() public view returns (uint256) {
        return d;
    }
    function setE() internal {
        e = 9;
        eMut = 10;
    }
    function getE() public
