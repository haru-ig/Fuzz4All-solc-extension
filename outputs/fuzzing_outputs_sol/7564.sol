pragma solidity ^0.8.0;
contract MixedFallbackModifier {
    receive() external payable {}

    receive() external {
        revert("InvalidFunctionSignature");
    }
}
