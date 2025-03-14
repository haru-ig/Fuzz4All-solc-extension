pragma solidity ^0.8.0;
contract SemanticMutation4
{

    uint16 private constant x = 113;
    uint16 constant y = 32;
    uint z = x - y;

    function test_a (uint d) public pure returns (uint)
    {
        return d;
    }
}
