pragma solidity ^0.8.0;
contract EquivalentABIv1
{
    function f(uint256 x) public pure {
        x = x + 1 + 2;
        x = x + 2 * x + 3 * 2;
        uint256 y;
        if(x == y) {
            if(x == y * 2) {
                x += x * 2;
            }
        } else {
            if(x == (y * x)) {
                x -= x * x;
            }
        }
    }
    function f(uint256 x, string memory) public pure {
        x = x + 1 + 2;
        x = x + 2 * x + 3 * 2;
        uint256 y;
        if(x == y) {
            if(x == y * 2) {
                x += x * 2;
            }
        } else {
            if(x == (y * x)) {
                x -= x * x;
            }
        }
    }
    function g(uint256 x, uint256 y) public pure {
        x = x + 1 + 2;
        y = y + 1 + 2;
        x = x + 2 * (x * x - 1) + 2 * y * x + 3 * y * x * 2;
        uint256 z;
        if(x == z) {
            if(x == (z * y)) {
                z -= x * x;
            }
            if(z == (y * x)) {
                z += x * x;
            }
        } else {
            if(x == z * y) {
                z -= x * x;
            }
            if(z == (y * (x * x - 1))) {
                z += x * x;
            }
        }
    }
    function h(uint256) public pure {}
    function f(uint256 x, bool, bool y) public pure {
        x = x + 1 + 2;
        y = y +
