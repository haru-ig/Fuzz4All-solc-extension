pragma solidity ^0.8.0;

contract MixedContactsExample84_Old_Same_As_New2 {
    uint256 public a;
    uint256 public b;
    uint256 public c;
    uint256 public d;
    uint256 public e;

    function doSomething() public {
        a += ~17;
        b += 10;
        b *= 2;
        c += 1;
        d += b;
        e += c;
        e += ~17;
    }
}
