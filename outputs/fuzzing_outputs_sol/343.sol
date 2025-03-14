pragma solidity ^0.8.0;
contract ContractWithFallbackModifier2_5 {
    function fallback() public {
        if (!msg.value == 1 ether) { revert("Expected 1 ether."); }
        msg.sender.transfer(0.1 ether);
    }
}
