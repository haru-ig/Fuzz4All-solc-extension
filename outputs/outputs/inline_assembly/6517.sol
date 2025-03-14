pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

contract MixedContactsExample72 {
    uint8 private constant a = -16;
    uint m;
    uint8 private constant b = 1;

    function setMA(uint e) public {
        uint x = 1;
        uint w = a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a;
        m = e % w + b;
    }
}
