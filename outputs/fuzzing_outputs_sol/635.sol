pragma solidity ^0.8.0;
contract SemanticEquivalent
{
    function semanticContract() public
    {
        (bool success, ) = myContract.call.value(1 ether)();
    }

    address payable public myContract;

    function call_method() public payable
    {
        address addr = address(myContract);
    }
}
