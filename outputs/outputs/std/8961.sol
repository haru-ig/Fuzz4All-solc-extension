pragma solidity ^0.8.0;
contract ExampleStruct10 {
    struct SimpleStruct {
        uint32 value;
        uint64 a1;
    }
    uint32 array[3];
    uint64 array2[2];
    struct {
    uint40 v1;
    uint256 v2;
    } array3;
    SimpleStruct a;
    SimpleStruct b;
    constructor() {
        array = [1, 2];
        array2 = [1, 2];
        array3 = 33;
        a = SimpleStruct(1);
        b = SimpleStruct(1);
    }
    function getInt2() public view returns (uint256) {
        return uint256(array[a]);
    }
    function getInt4() public view returns (uint40) {
        return uint40(a.v1);
    }
    function setInt2(uint i, uint i2) public {
        uint256 x = uint256(array[a]);
        if (i >= 0) {
            array[a] = i;
            a.v1 = i2;
        } else {
            a.v1 = uint64(x + i2);
        }
    }
    function testEquality(uint32 a, uint32 b) public view returns (bool) {
        return a == b || a - 1 == b;
    }
    function getFloat(uint8 k) public view returns (float) {
        if (3 <= k) {
            return array3.v1 + k * float(0.2F);
        } else {
            return float(array3.v1) / 4.2;
        }
    }
    function multiply(uint64 v2, float v1) public pure returns (float) {
        return (uint(v2) + 8) / 10.5;
    }
    function testLess(uint x, uint y) public view returns (bool) {
        return x < y;
    }
    function testLessOrEqual(uint x, uint y) public view returns (bool) {
        return x <= y;
    }
    function testGreater(uint x, uint y) public view returns (bool) {
        return x > y;
    }
    function testGreaterOrEqual(uint x, uint y) public view returns (bool) {
        return x >= y;
    }
}

pragma solidity ^0.8.0;
contract ExampleStruct11 {
    uint16 array[
