pragma solidity ^0.8.0;
contract Test21 {
    struct Foo {
        uint bar;
    }
    address public foo;
    function f(address a) public payable {
        unchecked {
            Foo storage s0 = storageSlot0;
            for (uint j = 2; j < 3; ++j) {
                Foo storage s = storageSlot(j);
                foo = a;
                s0.bar = 1 + s.bar;
            }
        }
    }
}
