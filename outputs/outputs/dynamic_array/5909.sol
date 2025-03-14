pragma solidity ^0.8.0;
contract Test33789Mutations {
    struct Foo {
        uint i;
        uint j;
        mapping (uint => uint) a;
    }

    uint16[7] x = [ 0x2, 0x3, 0x4, 0x6, 0x8, 0x9, 0xa ];
    Foo c;

    function set(uint16[3][] memory x_set) public {
        x_set[1][0] = 0x2;
    }

    function get() public view returns (uint16[3][] memory) {
        uint16[3][] memory a_get;
        a_get[0][0] = c.a[0] + 2;
        return a_get;
    }

    function update_foo(Foo memory foo) public {
        c = foo;
    }
}
