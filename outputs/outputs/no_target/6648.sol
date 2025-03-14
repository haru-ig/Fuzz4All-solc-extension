pragma solidity ^0.8.0;
contract SafeMath16 {

    constructor(uint _value) {
        require(!(_value < 1));
    }

    function add(uint x, uint y) public pure returns (uint z) {
        require(!((x == uint(-1)) && (y == uint(-1))));
        uint q = x / _Math.pow(2, 16);
        x -= q * _Math.pow(2, 16);
        q = y / _Math.pow(2, 16);
        y -= q * _Math.pow(2, 16);
        z = uint(uint(q) * _Math.pow(2, 16) + x + y);

    }
}
