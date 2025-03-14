pragma solidity ^0.8.0;
contract CallDataFallbackModifier6 {
    function foo() public payable { }
    receive() public payable {}
}
contract ContractWithFallbackModifier7 {
    function foo(string memory bar) internal returns (address x, uint y){ y = y + 1; return (x, y); }
}
