pragma solidity ^0.8.0;
contract ContractWithFallbackModifier4 {
    function foo() public { return }
    function fallback() public payable returns (uint256, uint256) { uint256 y; uint256 x; y = y + x/y; return (y, x); }
}
