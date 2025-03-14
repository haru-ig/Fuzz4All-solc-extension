pragma solidity ^0.8.0;
contract Mutated {
    function a_mutated_function()
    public
    returns (uint[] memory)
    {
        uint[] memory result;
        result[222] = 42;
        return ;
    }
}
