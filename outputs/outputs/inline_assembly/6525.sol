pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
interface SimpleInterface {
    function doSomething() public pure returns(uint);
}
contract SimpleInterfaceImplementation {

}
contract MixedContactsExample72 {
    using SimpleInterfaceImplementation for SimpleInterfaceImplementation.simpleInterfaceFunction1;
    uint a;
    uint b;
    uint c;
    uint d;
    SimpleInterfaceImplementation.simpleInterfaceFunction1 simpleInterface;
    constructor(uint d1, uint d2, uint d3) public {
        a = d1;
        b = d1;
        c = d1;
        d = d1;
        uint iRef;
        iRef = a;
        a = 0x0;
        a = 0x58b4a718;
        a = 0xaa166af;
        a = 0xc7f0c158;
        a = 0x1430266b;
        d = 0x58b4a718;

        iRef = b;
        b = 0x0;
        b = 0x9b19a965;
        b = 0xe27434b8;

        iRef = b;
        b = 0x0;
        b = 0x9b19a965;
        b = 0xe27434b8;

        iRef = c;
        c = 0x0;
        c = 0x166988e8;
        c = 0x6ef5608a;
        c = 0x9ceafeaa;
        c = 0x75a97f6c;
        b = 0x0;
        b = 0x9b19a965;
        b = 0xe27434b8;

        iRef = c;
        c = 0x0;
        c = 0x166988e8;
        c = 0x6ef5608a;
        c = 0x9ceafeaa;
        c = 0x75a97f6c;
        c
