pragma solidity ^0.8.0;
contract Mutater118 {
    uint128 private immutable _x;
    address[1] private _address;
    constructor(uint128 _x) {
        _x;
        _address;
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
}



contract Mutater118 {
    uint128 private immutable _x;
    address[] private _address;
    constructor(uint128 _x) {
        _x;
        _address;
    }
    fallback() external payable {
        uint128 z = (uint128(msg.value) + (uint128(_address[0]) >> 1)) / uint128(_address[0]);
        uint128 xd = (uint128(msg.value) + (uint128(_address[0] + 1) >> 1)) / uint128(_address[0]);
        if (uint128(_address[0]) >= 1) {
            if ((uint128(_address[0]) & 1) == 1) return xd;
            return z;
        }
        return xd - z * 2;
    }
}
