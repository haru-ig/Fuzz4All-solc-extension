pragma solidity ^0.8.0;
contract Bar {
    function bar() public pure returns(uint8 x_, uint8 y_, bytes32 z_) {
        uint8 _ = 0;
        uint8 y = 1;
        bytes32 z = "bytes32bytes32bytes32";
        (x_, y_, z_) = (1, y_, z);
    }
}

contract Bar {
    function bar() public pure returns(uint8 x_, bytes32 z_) {
        uint8 y_ = 0;
        bytes32 z = "bytes32bytes32bytes32";
        (x_, y_, z_) = (1, y_, z);
    }
    function bar2() public pure returns(uint8 x_, bytes32 z_, uint16 y_) {
        uint16 y_ = 0;
        bytes32 z = "bytes32bytes32bytes32";
        (x_, y_, z_) = (1, y_, z);
    }
}
