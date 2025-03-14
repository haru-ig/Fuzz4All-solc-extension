pragma solidity ^0.8.0;
contract Math {
    uint256 public value;
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        require(a + b < type(uint256).max);
        return a + b;
    }
    function mul(uint256 a, uint256 b) public pure returns (uint256) {
        return a * b;
    }
    function pow(uint256 a, uint256 b) public pure returns (uint256) {
        uint256 r = 1;
        while (b > 0) {
            if (b % 2!= 0) {r = r * a;}
            a = a * a;
            b /= 2;
        }
        return r;
    }
}
