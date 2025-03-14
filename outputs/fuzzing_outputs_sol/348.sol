pragma solidity ^0.8.0;
contract ContractWithFallbackModifier2_5 {
    function fallback() public pure returns (address payable) { return address(0); }
}
