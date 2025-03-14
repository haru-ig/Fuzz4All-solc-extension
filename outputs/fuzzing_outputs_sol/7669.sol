pragma solidity ^0.8.0;
contract NonMutatingSemanticEquivalence
{
    constructor() { revert(); }
    function mutateData() public pure { revert(); }
    function mutateAddress() public pure returns (address) { revert(); }
    function mutateBool() public pure returns (bool) { revert(); }
    function mutateCall() public payable returns (uint256) { revert(); }
}
