pragma solidity ^0.8.0;
contract Caller {
    uint public _x;
    constructor() {
    }
    function add(uint x) internal pure returns (uint) {
        return x + 2;
    }
    function div(uint x, uint y) internal pure returns (uint) {
        return x / 2 % 2 == 0? div(2 * x + y, 2) : div(2 * x + y, 2 + div(x, uint(59))) * 2;
    }
    function invalidAdd(uint x) internal view returns (uint) {
        return add(x) + 2;
    }
}
