pragma solidity ^0.8.0;
contract SemanticMutation4
{
    uint private constant value = 16;
    function test_a () public pure returns (uint1027)
    {
        if (value == 16)
        {
            return 1;
        }
        else
        {
            return 2;
        }
    }
}
