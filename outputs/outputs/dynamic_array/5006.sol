pragma solidity ^0.8.0;
contract Test7Ffs {}
contract Test12Fs {
    struct Foo {
        uint8 u4_field0;
        uint16 s2_field1;
        bytes32 c123;
        bytes6 c2_bytes;
        address addr;
        string str;
        struct Bar {
            uint16 s2_field1;
            bytes32 c299;
        }
        Bar bar;
    }

    function foo() public {
        uint[] memory arr;
        Foo[] memory fooarr;
        return;
    }
}
