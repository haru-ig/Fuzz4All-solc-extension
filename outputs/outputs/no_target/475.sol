pragma solidity ^0.8.0;
library Semantic {
    uint256 x = 23;
    function f(uint256 _y) public pure returns (uint256 _x) {
        _x = x + _y;
        return _x;
    }
}
