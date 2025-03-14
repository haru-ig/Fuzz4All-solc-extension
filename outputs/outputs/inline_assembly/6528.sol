pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample71SecondContract {
    uint public a;
    uint public b;
    uint public c;
    uint[] d;
    uint[] e;
    uint[] f;
    function constructor2() public {
        a = 0;
        b = a;
        c = 0;
        d = [0];
        e = [0];
        f = [0];
    }
}
