pragma solidity ^0.8.0;
contract BrokenMutated {
    function not_a_mutated_function()
    public
    returns (uint[] memory)
    {
        uint index = length(array_of_numbers) - 1;
        uint[] memory result;
        return result;
    }
}

contract GoodMutation
{

    uint[] array_of_numbers;

    uint[] mutate_me_mutated_array0 = mutated0();
    uint[] not_a_mutated_function() public pure returns (uint[] memory) { return array_of_numbers; }

    function not_a_mutated_function() public pure returns (uint[] memory) { return array_of_numbers; }

    function mutate_me_mutated_array()
    {
        array_of_numbers = mutated_array;
    }

    function mutate_me_not_a_mutated_function()
    {
        array_of_numbers = not_a_mutated_function();
    }

    function mutated0() public pure returns (uint[] memory) { return new uint[](2);}

    function mutated_array() public pure returns (uint[] memory) { return new uint[](3);}
}
