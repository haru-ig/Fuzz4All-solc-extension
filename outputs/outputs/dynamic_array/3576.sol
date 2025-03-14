pragma solidity ^0.8.0;
contract C {
    enum B {
        G
    }
    mapping(bytes32 => B) public _x;
    function b() public {
        _x.push(bytes32(keccak256(abi.encode(uint(B.G.value)))));
    }
}
