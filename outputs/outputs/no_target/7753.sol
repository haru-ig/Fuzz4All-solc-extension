pragma solidity ^0.8.0;
contract Foo {
    function foo() public pure {
        uint8 y_;
        bool z_ = true;
        (y_, z_) = (0, z_);
    }
}
