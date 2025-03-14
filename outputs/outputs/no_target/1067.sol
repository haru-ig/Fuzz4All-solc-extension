pragma solidity ^0.8.0;
contract SemanticMutation23
{
    uint16 private constant value = 8;
    function a() pure public returns (bool)
    {
        return true;
    }
    function b() pure public returns (uint16)
    {
        return 4;
    }
}
