pragma solidity ^0.8.0;
contract Bar {
    function bar() public pure {
        uint8 y_ = 0xFF;
        uint8 x;
        bytes32 z;
        (x, y_, z) = (15, y_, "bytes32bytes32bytes32");
    }
}
contract Bar {
    function bar() public pure {
        uint160 y_ = uint160(0);
        uint160 x;
        bytes32 z;
        (x, y_, z) = (15, y_, "bytes32bytes32bytes32");
    }
}
