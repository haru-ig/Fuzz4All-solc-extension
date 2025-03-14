pragma solidity ^0.8.0;
contract ContractWithFallbackModifier8 {
    function foo() public payable returns (address x, uint y, string memory z) { (x, z) = foo(); return (x, y, z); }
}
