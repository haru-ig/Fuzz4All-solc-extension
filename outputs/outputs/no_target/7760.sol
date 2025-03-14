pragma solidity ^0.8.0;
contract Foo {
    function foo() public pure returns (uint8 x_, uint8 y_) {
        uint8 a_ = 0;
        uint8 b = 0;
        x_ = a_ + b;
        y_ = a_ - b;
    }
}
