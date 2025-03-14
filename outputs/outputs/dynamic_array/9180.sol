pragma solidity ^0.8.0;
contract Mutated2 {
    function not_a_mutated_function()
    public
    constant
    view
    returns (uint[] memory)
    {
        uint[] memory result;
        return result;
    }
}
