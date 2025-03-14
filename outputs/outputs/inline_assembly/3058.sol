pragma solidity ^0.8.0;
contract C {
  uint public a=0x10;
  uint public b;
  uint final c;
  function M() public {
    b=0x40;
    c=a+b;
    b=0x80;
    a+=b;
    b=0xC0;
    a-=b;
    b=0xE0;
    a=~b;
    b=0x3F;
    a^=b;
    b=0x10;
    a*=b;
    b=0x20;
    a/=b;
    b=0x40;
    a%=b;
    b=0x10;
    a+^b;
    b=0x20;
    a|^b;
    b=0x40;
    a&=b;
    b=0x80;
    a^=b;
    b=0x20;
    a&=b;
    b=0x40;
    a|=b;
    b=0x100;
    a-=b;
    b=0x80;
    a-^b;
    b=0xC0;
    a*^b;
    b=0x10;
    c*=b;
    b=0x20;
    c/=b;
    b=0x40;
    c%=b;
    b=0x20;
    c+^b;
    b=0x40;
    c|^b;
    b=0x80;
    c&=b;
    b=0x40;
    c^=b;
    b=0x20;
    c&=b;
    b=0x10;
    c|=b;
    b=0xC0;
    c-=b;
    b=0x80;
    c-^b;
    b=0x40;
    c*^b;
    b=0x20;
    c%=b;
    b=0x10;
    c^=?b;
    b=0xE0;
    if (true) {
      c*=b;
    }
    else {
      c/=b;
    }
    b=0x80;
    c%=?b;
    b=0x60;
    c*=b;
    b=0x40;
    c%=b;
    b=0x20;
    c+^b;
    b=0x10;
    c|^b;
  }
}
