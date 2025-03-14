pragma solidity ^0.8.0;
contract ContractWithFallbackModifier7 {
    function foo() public payable returns (address x, uint y, string memory z) { y = y + 1; z = "foo"; return (x, y, z); }
}
