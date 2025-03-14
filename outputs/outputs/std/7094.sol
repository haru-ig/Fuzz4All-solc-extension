pragma solidity ^0.8.0;
contract BitwiseXORX {
    bytes10 a;
    function test() public{
        a = a ^ bytes10("Hello");
    }
}
