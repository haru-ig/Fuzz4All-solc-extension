pragma solidity ^0.8.0;
contract C {
    enum B {
        G
    }
    bytes32 public _b;
    function b() public {
        setBytes32();
    }
    function setBytes32() private {
        _b = b;
    }
    function b2() public {
        setBytes32();
    }
}
