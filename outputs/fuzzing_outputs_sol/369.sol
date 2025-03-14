pragma solidity ^0.8.0;
contract ContractWithFallbackModifier4 {
    function foo() public {}
    function fallback() public payable {}
    receive() external payable { foo(); }
