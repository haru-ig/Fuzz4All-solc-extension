pragma solidity ^0.8.0;
contract ContractWithFallbackModifier2_5 {
    function foo() public pure returns (address) { return address(0); }
    function fallback() public payable { return; }
}
