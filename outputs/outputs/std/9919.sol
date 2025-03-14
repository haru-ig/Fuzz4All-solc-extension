pragma solidity ^0.8.0;
contract Multiprecision {
    constructor() {
    }
    function add(bytes32 x, bytes32 y) external pure returns (uint) {
        uint8 xu = uint8(x);
        uint8 yu = uint8(y);
        uint8 xd = uint8(floor(a2b(x)) + floor(a2b(y)));
        if ((xd & 0xFFFFFFFFFFFFFF80)!= 0) {
            xu += 1;
        }
        return uint8(xu + yu);
    }
    function sub(bytes32 x, bytes32 y) external pure returns (uint) {
        return add(x, bytes32(uint(uint8(~uint8(x >> 0x00))));
    }
    function mul(bytes32 x, bytes32 y) external pure returns (uint) {
        uint8 xu = uint8(x);
        uint8 yu = uint8(y);
        uint8 xd = uint8(floor(a2b(x)) * floor(a2b(y)));
        if ((xd & 0xFFFFFFFFFFFFFF80)!= 0) {
            xu += 1;
        }
        return uint8(xd >> 0x7F) + uint8(xu * yu);
    }
    function div(bytes32 x, bytes32 y) external pure returns (bytes32) {
        uint1 xu = uint1(uint8(x));
        uint1 yu = uint1(uint8(y));
        if (xu == 0) {
            revert("Division by zero");
        }
        uint1 xd = uint1(uint8(floor(a2b(x) >> 0x7F) / yu));
        return bytes32(xd);
    }
    function mod(bytes32 x, bytes32 y) external pure returns (bytes32) {
        uint1 xu = uint1(uint8(x));
        uint1 yu = uint1(uint8(y));

        if (xu < yu) {
            return bytes32(uint(uint8(~uint8(x >> 0x00))));
        }
        return bytes32(uint(uint8(x >> 0x00)));
    }
}

pragma solidity ^0.8.0;
contract MemoryMutated10 {
    uint8 a0;
    uint8 b;
    uint8 c;
    uint8 b5;
    uint8 b6;
    uint8 f;
    uint8 f0;
    function set0(bytes32 x) external {
        a0 = uint8(
