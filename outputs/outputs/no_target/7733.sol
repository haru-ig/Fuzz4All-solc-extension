pragma solidity ^0.8.0;
contract Baz {
    function baz() public pure returns (bytes32 x_, uint8 y_) {
        bytes32 y_ = "bytes32";
        y_ = 0;
        return ("bytes32", y_);
    }
}
