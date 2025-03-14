pragma solidity ^0.8.0;
contract C11 {
    struct T { uint256 a; }
    constructor(uint256 x) {}
    function r(T memory y) public {
        y.a = m(y.a, y);
        y.a = m(y.a, y);
    }
    function m(uint256 z, T memory y) public pure returns (uint256) {
        return z * 2;
    }
}
