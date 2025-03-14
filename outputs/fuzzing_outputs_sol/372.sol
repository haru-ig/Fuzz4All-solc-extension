pragma solidity ^0.8.0;
contract ContractWithFallbackModifier6 {
    function foo() public payable returns (address x, uint y){ y = y + 1; return (x, y); }
}
