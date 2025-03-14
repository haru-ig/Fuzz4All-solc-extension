pragma solidity ^0.8.0;
contract ComplexMutation8 {
    struct Point {
        uint256 x;
        uint256 y;
    }

    function test1(Point memory memory arg, uint256 arg2) public pure returns (bool) {
        return true;
    }
}
