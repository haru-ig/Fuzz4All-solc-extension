pragma solidity ^0.8.0;
contract MutatedSemanticEquivalence
{
    function fallback () public payable { }
    receive () external payable { }
    function mutateAddress() public pure returns (address) {
        return address(uint160(address(this)));
    }
    function mutateBool() public pure returns (bool) {
        return false;
    }
    function mutateCall() public payable returns (uint256) {
        return 0;
    }
}
