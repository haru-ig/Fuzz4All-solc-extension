pragma solidity ^0.8.0;
interface MixedContactsExample502Interface {
    function someOperation() external returns (uint56);
}
contract MixedContactsExample501 is MixedContactsExample502Interface{
    function someOperation() external returns (uint56) {
        a = a + 50;
        b = b + 51;
        c = c + 52;
        doSomething();
        d = d +1;
        e = e + 63;
        return x + 74;
    }
}
