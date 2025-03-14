pragma solidity ^0.8.0;
contract Mutate18 {
    uint256 public x;
    constructor () {
        uint256 w = 2;
        x = 2 * uint256(now);
        uint256 y = 2 * now;
        uint256 z;
        z = (w + x) * now;
        uint256 y2 = x - uint256(now) + uint256(now);
    }
    function getX() {
        return x;
    }
}
