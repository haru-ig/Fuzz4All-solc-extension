pragma solidity ^0.8.0;
contract BitwiseXORY {
    bytes16 a;
    function test() public{
        a = a ^ bytes10(1.1);
    }
}
