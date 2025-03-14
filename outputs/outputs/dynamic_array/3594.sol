pragma solidity ^0.8.0;
contract C {
    enum B {
        G
    }
    mapping(bytes32 => B) public _b;
    function b() public {
        address a = _b[bytes32(0)];
        address b = _b[bytes32(1)];
        address c = _b[b];
        address d = _b[bytes32(0)];
        address e = a;
    }
}
