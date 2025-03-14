pragma solidity ^0.8.0;
contract C6 {
function calldataArr() public pure returns (uint256[] memory) {}
function set(uint256[] memory) public pure {}
function calldataArrSize() public pure returns (uint256) {}
}
pragma solidity ^0.8.0;
contract C5 {
    function a(uint256 x) public pure returns (uint256) {
        return a(x);
    }
    function b(uint256 x) internal pure returns (uint256) {
        if (x < 0) {
            return b(uint256(- 0x349)) - 1;
        } else {
            return b(x);
        }
    }
    function c(uint256 x) public pure returns (uint256) {
        return a(x) + b(x);
    }
    function d(uint256 x) public pure returns (uint256) {
        return c(x) - b(x);
    }
    function e(uint256 x) public pure returns (uint256) {
        return d(x) + a(x);
    }
    function f(uint256 x) public pure returns (uint256) {
        return e(x) - c(x);
    }
    function g(uint256 x) public pure returns (uint256) {
        return (a(uint264(x))) - (b(uint264(x)));
    }
    function h(uint256 x) public pure returns (uint256) {
        return (b(uint264(x))) + (c(uint264(x)));
    }
    function i(uint256 x) public pure returns (uint256) {
        require(x >= 0);
        return e((g(x))) + d((e(uint264(x)))));
    }
    function j(uint256 x) public pure returns (uint256) {
        return (a(uint264(x))) - (b(uint264(x)));
    }
    function k(uint256 x) public pure returns (uint256) {
        return (c(uint264(x))) - (b(uint264(x)));
    }
    function l(uint256 x) public pure returns (uint256) {
        return (g(uint264(x))) -
