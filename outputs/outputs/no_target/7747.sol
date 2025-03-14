pragma solidity ^0.8.0;
contract Foo {

    function f_empty_1() public pure {
        uint8 v = 0;
        v = 0x0;
    }

    function f_empty_2() public pure {
        uint8 v = 0;
        v = int8(0);
    }

    function f_empty_3(address foo) public pure {
        uint8 v = 0;
        address a;
        address b;
        bytes32 w;
        (a, b, w) = (foo, foo, "bytes32bytes32");
    }

    function f_empty_4(uint8 x) public pure {
        uint8 v = 0;
        uint8 z;
        (uint8 w, int8 y) = (x, int32(0));
        (v, z, v) = (1, z, 0);
        (uint8 t) = v;
        v = v + t;
        (v, v, v) = (2, 2, 2);
        (v, v, v) = (3, 4, 5);
        (v, v, v) = (1 << 8, 1 << 24, 1 << 17);
        (v, v) = (0xff, -1);
    }

    function s_empty_5() public pure {
        address v = address(0);
        v = address(uint8(0xff));
    }

    function s_empty_6() public pure {
        uint8 v = uint8(0xff);
        v = uint16(0xff);
    }
}
