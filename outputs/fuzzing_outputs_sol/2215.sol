pragma solidity ^0.8.0;
contract Mutater1397 {
    uint128 public immutable _x;
    constructor(uint128 _x) {
        _x;
    }
    function add(uint128 x) internal view returns (uint128) {
        return x + (x >> 1);
    }
    function sub(uint128 x) internal view returns (uint128) {
        return x - (x >> 1);
    }
    function mul(uint128 x, uint128 y) internal view returns (uint128) {
        uint128 z = (x * y) >>> 128;
        z += (x * y * (((uint256)(x) >> 63)) * (((uint256)(y) >> 63))) >> 128;
        z = z + ((x * y * (((uint256)(x) >> 63))) << 127) >> 128;
        return z;
    }
    function div(uint128 x, uint128 y) internal view returns (uint128) {
        uint128 z = x + (x / y) * y;
        return z / y * y;
    }
    function fallback(uint128 _y) public view {
        uint128 x = _x + _y;
        if (x == _x) require(false, "Mutater1397");
        require(x <= 2**31, "Not enough gas");
    }
}
