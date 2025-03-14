pragma solidity ^0.8.0;
contract Mutated {
    function not_a_mutated_function(uint i) public
    view
    returns (uint[] memory)
    {
        uint[] memory result;
        result[i] = 3;
        return result;
    }
}
contract Mutated {
    function not_a_mutated_function() public
    view
        returns (uint[] memory [5])
    {
        uint[] memory result;
        result[5] = 3;
        return result;
    }
}
contract Mutated {
    function not_a_mutated_function() public
    view
        returns (uint[] memory [5] memory)
    {
        uint[] memory result;
        result.length = 5;
        result[0] = 3;
        return result;
    }
}
