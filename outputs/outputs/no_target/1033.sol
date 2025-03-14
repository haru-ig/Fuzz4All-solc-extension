pragma solidity ^0.8.0;
contract SemanticMutation11
{
    uint private constant value = 4;
    function a() public pure
    {
    }
    function b() public pure returns (uint) {
        uint i = 4;
        i = 5;
        return i;
    }
}
contract SemanticMutation12
{
    uint private constant value = 4;
    function a() public pure
    {
    }
    function b() public pure returns (uint) {
        uint i = value << 8;
        i = 5;
        return i;
    }
}
contract SemanticMutation13
{
    uint private constant value = 4;
    function a() public pure {}
    function b() public pure returns
        (
            uint
          , uint
        )
    {
        uint i = 4;
        i = 5;
        return (i,5);
    }
}
contract SemanticMutation15
{
    address public x = 0x92d992d492d4df49899ef4dfdc292709c2a58992;
}
contract SemanticMutation16
{
    uint160 public x = 0x123456784cd0b20a0476484c000200000000004;
}
