pragma solidity ^0.8.0;
contract Foo {
    uint8 immutable public constant maxBytes = 4095;
    function barmut() public pure returns (bytes x_) {
        bytes memory x = new bytes(maxBytes);
        x[0] = 10;
        x[1] = 11;
        bytes16 z = x_;
        x[2] = 10;
        return x_;
    }
    function bar() public pure returns (bytes16 x_) {
        bytes memory x = new bytes(maxBytes);
        x[0] = 10;
        x[1] = 11;
        x[2] = 10;
        return x_;
    }
}
