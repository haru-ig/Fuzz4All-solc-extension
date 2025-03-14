pragma solidity ^0.8.0;
contract ContractWithFallbackModifier_4 {
    function foo() public returns (address) { return address(0); }
    function fallback() public payable {
        if (msg.data.length > 0) {
            throw;
        } else {
            return address(0);
        }
    }
}
