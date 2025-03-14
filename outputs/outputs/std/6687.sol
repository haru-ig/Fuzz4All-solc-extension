pragma solidity ^0.8.0;
contract Math {
    function squareRoot(uint x) public pure returns (uint) {
        return (uint(1) / x);
    }
    function modularExponentiation(uint x, uint y, uint z) public pure returns (uint) {
        return x**y % z;
    }
}
