pragma solidity ^0.8.0;
contract Foo {
    function foo() public pure {
        uint8 y_ = uint8(0);
        if (true) {
            uint8 x_;
            bytes32 z_;
            (x_, y_, z_) = (1, y_, "bytes32bytes32bytes32");
        }
    }
}
