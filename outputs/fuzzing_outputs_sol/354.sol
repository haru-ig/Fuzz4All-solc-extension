pragma solidity ^0.8.0;
contract ContractWithFallbackModifier3_3 {
    function foo() public returns (address) { return address(0); }
    function fallback() public payable {
        return;
    }
}
