pragma solidity ^0.8.0;
contract SemanticMutation2
{
    uint16 public value;
    modifier test_a () { value = 7; _; }
    function test_b () public test_a returns (uint256)
    {
        return value + 1;
    }
    function test_c () public returns (uint256)
    {
        return value;
    }
}
