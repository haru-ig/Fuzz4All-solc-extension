pragma solidity ^0.8.0;
contract Mutated {
    function not_a_mutated_function()
    public
    view
    returns (uint[] memory)
    {
        uint[] memory result;
        return result;
    }
}
