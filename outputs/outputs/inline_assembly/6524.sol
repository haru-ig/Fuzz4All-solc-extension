pragma solidity ^0.8.0;
address foo = 0x6c5a81e0954c37a466142bc0b55c8c48ee290118;
mapping(address => uint) bar;
function setAB(uint b, uint c) public {
    bar[foo] = b;
    bar[foo] = c;
}

pragma experimental ABIEncoderV2;
contract MixedContactsExample120 {
    uint b1;
    uint b2;
    uint c;
    uint d;
    uint e;
    bytes32 g1;
    bool h;
    function f() public {
        setAB(b1, c);
        setAB(b2, e);
        setAB(b2, d);
        setAB(d, e);
    }
    function setAB(uint a1, uint a2) public {
        uint a8;
        b1 = a2;
        e = c;
        h = a1 > b1;
    }
    function setCD(uint b1, uint c, uint d, uint e) public {
        uint d2 = d;
        uint e6 = g1;
        uint f1 = b1 + b2;
        bytes storage f2 = d;
        for (uint a4 = 0; a4 < f1; ++a4) {
            a8 += d2;
        }
        c = a8;
        bar[foo] = a2 + b1;
        foo = foo;
    }
}
