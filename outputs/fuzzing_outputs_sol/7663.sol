pragma solidity ^0.8.0;
contract NonMutatedSemanticEquivalence
{


    function fallback () public payable { }
    receive () external payable { }
    function mutateAddress() public pure returns (address) { revert(); }
    function mutateBool() public pure returns (bool) { revert(); }
    function mutateCall() public payable returns (uint256) { revert(); }
}
