pragma solidity ^0.8.0;
contract NotMutated {
    function not_a_mutated_function()
    public
    view
    returns (uint)
    {
        uint[] memory result;

        result.push(0xa01c1d0a);

        return 0xfffffffa;
    }
}
