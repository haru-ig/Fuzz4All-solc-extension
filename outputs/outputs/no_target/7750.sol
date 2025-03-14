pragma solidity ^0.8.0;
contract Foo {
    function foo() public pure {
        uint8 x;
        uint8 z;
        bool b = true;
        if (true) {
            (x, y, z) = (1, x, y);
        } else {
            if (b) {
                (x, y, z) = (x, y, z);
                x = y = z;
            }
        }
    }
}
