pragma solidity ^0.8.0;
contract Mutator
{
    uint constant a = 4;
    uint constant b = 1;
    uint constant add = 4 + 2 - 0.2 + 3.0 - a + 0.000000010000010 - 1.1;
    uint constant x1 = a, x2 = b;
    bytes32 public constant x4 = 2e1 + 'xyz';
    bytes32 constant x8 = "X", x9 = "YZZ";
    uint constant x10 = 2 * 5.7;

    uint constant x11 = 1 / 10;
    bool constant x12 = true, x13 = false, x14 = false;
    bool constant x15 = true, x16 = false, x17 = true;
    uint constant x18 = 3e2, x19 = 1e3;
    uint constant x20 = 3 * 4;
    uint constant x21 = 3 * a / (1 + 1) / (1.0 + 0.0) + 10 - x10 + 3 + x2 - (2 + 0.01 + 1) + a * 0.1);
    uint constant x22 = 2 + "A";
    uint constant x23 = a + 1;
    bool constant x24 = (1 > 2) + false;
    uint constant x25 = "A" - 1;
    uint constant x26 = x18 * x9;
    uint constant x27 = "ABC" * "ABC";
    uint constant x28 = "123" - 290312;
    uint constant x29 = a * 2 * 3 * 3 / a;
    uint constant x30 = 30;

    bytes32 constant x31 = 1;
    bytes32 public constant x32 = b;
    bytes32 constant x33 = "Hello" - "World";
