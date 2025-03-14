pragma solidity ^0.8.0;
contract NonStandardFallbackModifierWithSendValueModifier {
    function f() public payable {}

    fallback () external payable {
        f();
    }
}
