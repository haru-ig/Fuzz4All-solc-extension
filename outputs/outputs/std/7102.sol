pragma solidity ^0.8.0;
contract SemanticsXORX {
    bytes16 b;
    uint8 c;
    bytes10 d;
    function test() public{
        b = b ^ bytes16(10);
        c = uint8(c) ^ 8;
        d = d ^ bytes10(bytes10("Hello"));
    }
}
