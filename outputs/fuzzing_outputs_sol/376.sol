pragma solidity ^0.8.0;
contract ContractWithFallbackModifier7 {
    function foo() public payable returns (address x, uint y){ y = y + 1; return (x, y); }
}
