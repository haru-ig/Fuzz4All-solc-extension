pragma solidity ^0.8.0;
contract Original
{
    function call_contract() public payable{
        mutated_func();
    }

    uint256 mutated_func() public payable
    {
        _;
    }
}
