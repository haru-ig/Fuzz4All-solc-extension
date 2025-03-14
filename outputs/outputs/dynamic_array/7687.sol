pragma solidity ^0.8.0;
contract Test18_semanticsSame_1{
    uint A;
    uint B;
    mapping(uint=>uint) C;
    uint D;
    function a(uint a, uint b, uint c) public
    {
        A=a;
    }
    function b(uint a, uint b) public
    {
        uint D;
    }
    function c(uint a, uint b, uint c) public
    {
        uint E=A;
        uint F = 0;
    }
}
