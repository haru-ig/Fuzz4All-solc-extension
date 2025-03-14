pragma solidity ^0.8.0;
contract ContractWithFallbackModifier2_4 {
    function fallback() public returns (address payable) { return payable(address(0)); }
}
