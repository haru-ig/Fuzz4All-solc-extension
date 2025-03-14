pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample85 {
    uint256 public a;
    uint256 public b;
    uint256 public c;
    uint256 public d;
    uint256 public e;
    uint256 public ex;
    function doSomething() public {
        a *= a;
        b +=   b;
        b *= a/b;
        b +=   c;
        a *= ex;
        b = b - (d + 0x20 *   e);
        a = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF + 0x2 * (0x4000 *   ex) + 1;   a = a % 1 + a  - 0x7fffffe0000000000000000000000000000000000118;
    }
}
