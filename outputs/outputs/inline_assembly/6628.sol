pragma solidity ^0.8.0;
contract MixedContactsExample95 {
    bytes32 a;
    bytes32 b;
    bytes32 c;
    bytes32 d;
    bytes32 e;
    bytes32 ex;
    function doSomething() public {
        b = 0x34;
        b += bytes32(c);
        a = 0x97;
        c = 0xd7;
        d = 0x83;
        e = 0x87;
        ex = a % d % c + ex;
    }
}
