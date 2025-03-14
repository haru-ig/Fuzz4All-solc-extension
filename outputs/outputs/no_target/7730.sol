pragma solidity ^0.8.0;
contract Bar {
    function bar() public pure returns (uint8 x_) {
        uint8 y_;
        bytes32 z_;
        (x_, y_, z_) = (1, y_, "bytes32bytes32bytes32");
        return x_;
    }
}
