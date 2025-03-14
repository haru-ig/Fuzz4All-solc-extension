pragma solidity ^0.8.0;
contract Math {
    uint256 private value;
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        require(a + b < type(uint256).max);
        return a + b;
    }
    function mul(uint256 a, uint256 b) public pure returns (uint256) {
        uint256 c = a * b;
        require(a > 0 && b > 0);
        return c;
    }
    function pow(uint256 a, uint256 b) public pure returns (uint256) {
        uint256 r = 1;
        while (b > 0) {
            if (b % 2!= 0) {r = Math.mul(r, a);}
            a = Math.mul(a, a);
            b /= 2;
        }
        return r;
    }
}
