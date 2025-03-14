pragma solidity ^0.8.0;
contract Semantic {
    uint256 public x;
    function f(uint256 _x) public {
        while (1 == _x) {
            _x = _x / 1;
        }
        x = x + _x / 1;
    }
}
