pragma solidity ^0.8.0;
contract Foo {
    function foo() public view {
        uint8 y_ = uint8(0);
        if (true) {
            uint8 x_;
            (x_, y_) = (1, y_);
        }

        y = y_;
    }
}
