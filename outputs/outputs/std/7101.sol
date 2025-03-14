pragma solidity ^0.8.0;
contract BitwiseXORYX {
    bytes33 a;
    function test() public{
        a = a ^ bytes33("Hello");
    }
}
