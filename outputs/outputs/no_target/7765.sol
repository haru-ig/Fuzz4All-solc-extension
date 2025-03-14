pragma solidity ^0.8.0;
contract Foo {
    function foo() public pure returns (uint8 x_, uint8 y_) {
        uint8 a_ = 32;
        uint8 b = (-1);
        b = a_ + b;
        x_ = a_ - b;
        y_ = a_ * b;
    }
}
contract Test { function test() public { Foo foo; uint8 x_; } }
