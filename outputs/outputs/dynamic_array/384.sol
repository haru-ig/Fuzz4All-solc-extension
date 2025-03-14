pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Ga7 {
    struct Inner {
    }
    struct Wrapper {
        Inner[] storage b;
        uint32[] storage c;
        bytes32[] storage d;
    }
    constructor() public {}
    function g1() public {
        Wrapper storage w;
        w.b.push(0x01);
        w.b.push(0x02);
        w.c.push(0x01);
        w.c.push(0x02);
        w.d.push(0x01);
        w.d.push(0x02);
    }
    function g2() public {
        new bytes32[](0);
        new bytes32[](0);
    }
    function g3() public {
        Wrapper memory w;
        w.b.push(0x01);
        w.b.push(0x02);
        w.c.push(0x01);
        w.c.push(0x02);
        w.d.push(0x01);
        w.d.push(0x02);
    }
}
