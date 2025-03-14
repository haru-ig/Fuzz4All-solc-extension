pragma solidity ^0.8.0;
contract Bar {
    function bar() public pure returns (uint8 x_) {
        uint8 y_ = uint8(0);
        uint8 x;
        bytes32 z;
        (x, y_, z) = (1, y_, "bytes32bytes32bytes32");
        return x_;
    }
}
