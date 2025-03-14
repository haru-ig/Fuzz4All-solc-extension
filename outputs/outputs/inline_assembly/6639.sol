pragma solidity ^0.8.0;
contract MixedContactsExample98 {
    uint56 a;
    uint56 b;
    uint56 c;
    uint56 d;
    uint56 e;
    uint56 x;
    uint56 ex;
    function doSomething() public {
        b += 32;
        b *= 0x22;
        ex *= 0x21;
        b /= 0x40;
        b %= 0x40;
        b = d;
        b *= ex;
        b /= ex;
        b += b;
        b *= 0x32;
        b *= 0xa3;
        b%= d;
        b%/= c;
        b%=(0x81 * 40);
        b%=(23 + d);
        b=(c + c) >> (b + 21);
        b*= (x);
        b%= c;
        b%= 35;
        b%= 0xa2;
        b%=(0xa1 - (a - 0x71));
        b%=(0xa4);
        b%= (3323 + (0x30 * (a % (b == 0x70))));
        b%= 0xa4;
        b+(b % b);
        b%=(25 % 0xb2);
        b%=(b == a);
        b%=(b * b);
        b%=(b - b);
    }
}
