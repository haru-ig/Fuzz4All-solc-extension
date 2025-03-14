pragma solidity ^0.8.0;
contract MutatedDynamicArrays6 {
    uint256 public constant y = 10;
    uint8[4] public x;
    bytes1 public y;

    function z() public pure {
        uint256 z = y;
    }
}

contract MutatedDynamicArrays7 {
    bytes memory a, b, c, d;
    uint16[2] public e;

    function foo() public pure {
        uint16 a;
        e = _array;
    }
    function y() public pure {
        bytes1 b;
        e = _array;
    }
    function z() public pure {
        a >> 0;
        b >> 0x70;
        d >> 7 << 7 << 0;
    }
    function testFoo() public pure {
        uint16[2] memory x;
        uint16 b;
    }
    function testY() public pure {
        _array >> 0;
        e >> 0x70;
        e >> 7 << 7 << 0;
    }
    function testZ() public pure {
        0x00;
        e >> 0x70;
        e >> 7 << 7 << 0;
    }
    function testBytes1() public pure {
        bytes1[2] memory z;
    }
    function testBytes4() public pure {
        bytes4 e;
    }
}
