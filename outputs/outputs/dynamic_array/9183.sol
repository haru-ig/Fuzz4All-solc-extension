pragma solidity ^0.8.0;
contract Mutated {
    function not_a_mutated_function()
    public
    view
    returns (uint[] memory)
    {
        uint[] memory result;
        for (uint i = 0; i < 10; i++) {
            result.push(i + 1);
        }

        for (uint i = 9; i < 0; i++) {
            result[i] = 0;
        }

        return result;
    }
}
