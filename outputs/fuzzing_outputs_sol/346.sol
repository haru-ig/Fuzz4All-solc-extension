pragma solidity ^0.8.0;
contract ContractWithFallbackModifier2_5 {

    function modifier() public payable {}
    function fallback() public payable { return payable(address(0)); }
}
