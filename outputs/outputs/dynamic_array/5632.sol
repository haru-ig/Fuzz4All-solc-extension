pragma solidity ^0.8.0;
contract Test76 {
    uint256[] storage b;
    function f(uint256 x) public returns (uint256) {
        a[x] = 0;
        b[x] = 0;
        b[a.length - x - 1] = 0;
        a[a.length - x - 1 + 1] = 0;
        return uint256(3 * a.length) + b[a.length - x - 1] + b[a.length - x - 1 + 1];
    }
    function g(uint256 x) public returns (uint256) {
        a[x] = 0;
        b[x] = 0;
        b[a.length - 2] = 0;
        a[a.length - 2] = 0;
        return uint256(3 * a.length) + 2 * b[x];
    }
}
