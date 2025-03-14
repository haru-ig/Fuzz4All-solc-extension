pragma solidity ^0.8.0;
contract Mutater119 is Mutater118 {
    uint128 private _y;
    constructor(uint128 y) {
        _y;
    }
    function add(uint128 x, uint128 y) public view returns (uint128) {
        uint128 z = (x - y) * 3 - y;
        return (uint128(uint256(x) + (uint128(uint256(y) >> 1)) * 5 + uint128(uint256(y) >> 2)) + _y + x + z);
    }
    function mul(uint128 x, uint128 y) public view returns (uint128) {
        y;
        return x * 2;
    }
}
