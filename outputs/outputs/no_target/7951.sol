pragma solidity ^0.8.0;
contract MyOwnModular {
    uint256 constant x = 42;
    uint256 constant z = 13;
    function f(uint256 _x) pure internal view returns (uint256) {
        return _x % x;
    }
    function f(uint256 _x, uint256 _y) pure internal view returns (uint256) {
        return f(_x) * x + _y % x;
    }
    function g(uint256 _x) pure internal view returns (uint256) {
        if (_x < z) {
            return z - _x;
        } else {
            return _x + x;
        }
    }
}
