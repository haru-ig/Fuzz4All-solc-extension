pragma solidity ^0.8.0;
contract SemanticMutation1
{
    function callMutated() view public returns (address)
    {
        return mutated;
    }
    function mutated() public
    {
        unchecked {
            mutated = address(uint160(uint160(uint160(uint160(uint160(uint160(address(uint160(uint160(uint160(address(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(address(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(address(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint
