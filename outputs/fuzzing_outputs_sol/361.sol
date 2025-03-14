pragma solidity ^0.8.0;
contract ContractWithFallbackModifier4 {
    function foo() public returns (address){ return address(0); }
    function fallback() public payable returns (uint256, uint256){ uint y; uint x; y = y + x/y; return (y, x); }
}
