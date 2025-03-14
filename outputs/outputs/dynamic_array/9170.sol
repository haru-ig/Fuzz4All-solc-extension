pragma solidity ^0.8.0;
contract FailingMutated {
    function not_a_mutated_function()
    public
    returns (uint[] memory)
    {
        uint[] memory result;
        return result;
    }
}
