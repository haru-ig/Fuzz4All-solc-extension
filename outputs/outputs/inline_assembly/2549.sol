pragma solidity ^0.8.0;

contract Example {
    uint256 a;
    uint32 b;
    constructor(uint256 _a, uint32 _b) {
        b = _b;
        a = _a;
    }

    function add(uint256 _b) public returns (uint256) {
        a += _b;
        return a;
    }

    function subtract(uint256 _b) public returns (uint256) {
        a -= _b;
        return a;
    }

    function multiply(uint256 _b) public returns (uint256) {
        a *= _b;
        return a;
    }

    function div(uint256 _b) public returns (uint256) {
        require(_b!= 0);

        uint48 _res = uint48(uint256(a) / _b);
        assembly {
            return(_res, 0, 0)
        }
    }
}
