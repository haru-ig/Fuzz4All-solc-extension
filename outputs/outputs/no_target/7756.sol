pragma solidity ^0.8.0;
contract Foo {
    function foo() public pure {
        uint8 y_ = 0;
        if (true) {
            uint8 x_ = 1;
            (y_, y_) = (x_, y_);
        }
    }
}
