pragma solidity ^0.8.0;
contract NotMutated {
    function not_a_not_mutated_function()
    public
    view
    returns (uint)
    {
        uint x = 1;
        uint[] memory result;
        return result;
    }
}
