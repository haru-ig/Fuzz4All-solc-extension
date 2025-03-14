pragma solidity ^0.8.0;
contract MutedFallbackModifier {
    receive() external payable {}
    function fallback() external payable {

    }
}
