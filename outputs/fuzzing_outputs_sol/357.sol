pragma solidity ^0.8.0;
contract ContractWithFallbackModifier3 {
    function foo() public returns (address){ return address(0); }
    function fallback() public payable returns (address){ return address(0); }
}
