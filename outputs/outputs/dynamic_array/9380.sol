pragma solidity ^0.8.0;
contract Arrays5 {
    uint public x;
    mapping (uint => address) public m;

    struct Foo {
        uint fooSize;
        bytes32[] b;
        constructor () {
            fooSize = 2 * sizeof (uint);
        }
    }

    bool a;
    function test() external returns (address) {
        address a1 = address(uint8(x));
        if (m.get(foo.bar)) {
            a1 = address(uint8(9000));
        }
        return a1;
    }

    Foo public d;
}
