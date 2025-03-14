pragma solidity ^0.8.0;

contract myContract {
    uint256 _x;
    uint32 constant _num8 = 255;
    constructor (uint x) public { _x = x; }

    modifier u(uint x) {
    uint y = 256 * x / _x;
    return y;
    }
    function g(uint x) public pure returns (uint) {
        uint y = _x + 256 * x / x;
        return y;
    }
}
