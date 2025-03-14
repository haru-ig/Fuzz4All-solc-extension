pragma solidity ^0.8.0;
contract SameContract {
    uint256 public constant i = 78;
    uint256 public constant j = 80;
    function add(uint256 x, uint256 y) public pure returns (uint256) {
        return (x + y);
    }
    function add(uint256 x) public pure returns (uint256) {
        return (x + (1 + x));
    }
    function negate(uint256 x) public pure returns (uint256) {
        return (-x);
    }
    function sub(uint256 x) public pure returns (uint256) {
        return (x - (2 * (x - 1)));
    }
}
