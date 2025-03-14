pragma solidity ^0.8.0;
contract Mutater119 {
    uint128 private immutable _x;
    constructor(uint128 _x) {
        _x;
    }
    function div(uint128 x, uint128 y) public view returns (uint128) {
        uint128 z = (x + (y >> 1)) / y;
        uint128 xd = (x + (y + 1) >> 1) / y;
        if (y >= 1) {
            if ((y & 1) == 1) return xd;
            return z;
        }
        return xd - z * 2;
    }


    function mul(uint128 x, uint128 y) public view returns (uint128) {
        uint128 res = x * y;
        return res / (uint256(uint128(1) + res));
    }
    receive() external payable {
        _x;
    }
}
