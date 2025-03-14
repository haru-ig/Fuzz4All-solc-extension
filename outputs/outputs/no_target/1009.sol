pragma solidity ^0.8.0;
contract SemanticMutation15
{
    uint public constant value = 3;
    function modify() internal pure {}
    function update() public pure returns (uint)
    {
        return value;
    }
}
