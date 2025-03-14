pragma solidity ^0.8.0;
contract Mutate16 {
    uint256 private x;
    constructor(uint256 p_x) {
        x = p_x;
    }
    function mutate12(uint32 l1) public returns (uint256 x) {
        return l1 + x;
    }
    function mutate13(uint32 l1) public returns (uint1 x) {
        return uint1(uint32(l1 + l1)) + x;
    }
    function mutate14(uint32 l1, uint32 l2) public returns (uint256 x) {
        return l1 + x + uint32(l2 * uint1(0x0FFF0FFF));
    }
    pure function multiplyAndAdd(uint32 x, uint32 y) internal pure returns (uint32 z) {
        return x * y + x;
    }
    function multiplyAndSubtract(uint32 x, uint32 y) public returns (uint32 z) {
        return uint32(multiplyAndAdd(x, y)) - x;
    }
    function multiplyBy(uint32 x, uint5 m5) public pure returns (uint1 z) {
        return uint1(uint32(x * uint1(0x0FFF0FFF)) * m5) + x;
    }
    function multiplyAndDivide(uint32 x, uint32 y) public returns (uint1 z) {
        z = multiplyBy(x, uint5(0));
        if (y == 0) return 0;
        z = (uint1(x / y)) + x;
        x |= ~0xFFFFFFFF;
        if (y < 256) x -= uint32(uint32(y - 1) * uint1(0x0FFF0FFF)) ^ x;
        else if (y < 65536) x -= uint32(uint32(y) * uint1(0xFFFFFFFF)) ^ x;
    }
    function isOdd(uint32 x) public pure returns (bool) {
        return x % 2!= 0;
    }
    function oddAndMultiply2(uint32 x) public pure returns (bool) {
        return isOdd(uint32(x >> 1)) && x & 1!= 0;
    }
}
contract Mutate17 {
    uint internal field;
    constructor(uint p_field) {
        field = p_field;
    }
    function setTwo(uint _two) public {
        field = 0x11;
        require(_two == 2);
    }
    function returnField() public pure returns (uint) {
        return field;
    }
}
