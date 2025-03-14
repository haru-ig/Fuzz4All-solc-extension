pragma solidity ^0.8.0;
contract MixedContactsExample101 {
    uint public x;
    uint84 public a;
    uint16 public b;
    uint24 public c;
    uint64 public d;
    uint84 public e;

    uint24 private b2;
    uint x2;
    uint64 private a2;
    uint64 public b3;

    uint84 public a3;

    uint public x3;
    uint64 a4;

    uint64 public a4b;

    function doesSomethingInternal() public returns (uint64) {
        a2 = a2 * 9;
        b3 = b3 + c;
        c = c * 7;
        uint x4 = x3 % 2;
        return b2;
    public doSomething() public returns (uint64) {
        x3 = x4;
        x2 = x * 4;
        a3 = a3 + 9;
        a4b = a / 4;
        doSomething();
        uint x5 = x3 % 9;
        if((d & 9) == 8) {
            x3 = x5;
        }

        a2 = a2 + a1 * a1;
    }
}
