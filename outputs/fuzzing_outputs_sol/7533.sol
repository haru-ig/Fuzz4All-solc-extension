pragma solidity ^0.8.0;
contract Caller {
    FallbackModifier public modifiers;

    constructor(FallbackModifier _modifiers) {
        modifiers = _modifiers;
    }

    function callSomethingThatThrowsAndFallback(uint256 _amount) public {
        modifiers.setZ(_amount);
        uint256 amount = 1e18;

        for(uint256 i = 0; i < amount; i++){

            modifiers.setZ(amount);
        }
    }
}
