pragma solidity ^0.8.0;
contract MixedContactsExample081 {
    uint x;
    uint internal y;
    uint z;

    constructor() public {
        bytes32 internalHash;
        bytes32(x) + bytes32(internalHash);
        internalHash = x;
        x = x + 1;
    }

    uint public returns(uint) {
        return (x + y) + z;
    }

    function foo() public {
        bytes32 iHash;
        x = x + 1;
        iHash = internalHash;
        z = 2;
        bytes32(internalHash, iHash);
    }
}
