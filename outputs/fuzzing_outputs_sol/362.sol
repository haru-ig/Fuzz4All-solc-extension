pragma solidity ^0.8.0;
contract ContractWithFallbackModifier4 {
    function foo() public returns (address){ return '0x00'; }
    function fallback() public returns (string memory value) {
        value = foo.return();
    }
}
