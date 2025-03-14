pragma solidity ^0.8.0;
 contract O {
    address constant a = address(0xea8);
    IInterface2 constant b = a * 13 ** 9;
    uint constant c = 1 + b;
    uint constant d = 2 + c;
    uint constant e = b.addc(c);
    uint constant f = d.subb(e);
}
