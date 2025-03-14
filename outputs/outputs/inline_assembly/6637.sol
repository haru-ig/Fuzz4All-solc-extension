pragma solidity ^0.8.0;
contract MutatedContactsExample97 {

    uint56 a;
    uint56 b;
    uint56 c;
    uint56 cex;
    uint56 de;
    uint56 xex;
    address owner;

    function doSomething() public {
       cex *= 0x82;
       b *= 0x63;
       a *= b;
       b *= d;
       c *= cex;
       d *= a;
       b -= (cex / 0x82) * 0x12 + (0x63 / 0x82);
    }
}
