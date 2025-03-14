pragma solidity ^0.8.0;
contract Foo {
    function foo() public pure {
        uint8 y_ = uint8(0);
        (uint8 x; uint8 y, string memory z) = (1, y_, "bytes32bytes32bytes32");
    }
}
