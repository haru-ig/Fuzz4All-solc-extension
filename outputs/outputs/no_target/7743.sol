pragma solidity ^0.8.0;
contract Bar {
    function bar() public pure {
        uint8 z;
        uint8 x;
        (, x, z) = (1, "bytes32bytes32bytes32");
    }
}
