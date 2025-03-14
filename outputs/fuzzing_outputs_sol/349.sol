pragma solidity ^0.8.0;
contract ContractWithFallbackModifier2_4 {
    function foo() public returns (address) { return address(0); }
    function fallback() public payable { return; }
}
