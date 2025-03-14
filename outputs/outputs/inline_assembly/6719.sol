pragma solidity ^0.8.0;
contract MixedContactsExample502 is MixedContactsExample501Interface {
    function someOperation() external override returns (uint56 _y) {
        return x + a + b + c + d + e + 23;
    }
    function mutate() public {
        uint56 f = doSomething();
        uint56 g = 592 * f;
        uint56 h = 268837860;
        _y = g - h;
    }
}
