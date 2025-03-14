pragma solidity ^0.8.0;
contract SemanticMutation5
{
    uint16 private constant value = 10;
    function test() public pure returns (uint, uint32)
    {
        return value, 1;
    }
    event E(uint a, uint b);
    function test_a (uint _a) public
    {
        emit E(value - 1, value);
    }
}
