pragma solidity ^0.8.0;
contract Semantic {
    uint256 public x;
    function f(uint256 _x) public {
        if (0 <= _x) {
            _x >>= 1;
        }
        else {
            _x ^= 8;
        }
        x = _x + x;
    }
}
