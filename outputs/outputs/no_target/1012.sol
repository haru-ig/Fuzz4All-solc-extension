pragma solidity ^0.8.0;
contract SemanticMutation16
{
    uint public constant value = 3;
    function modify() internal pure {}
    function update() public pure returns (uint, uint)
    {
        return (value, 4);
    }
}
