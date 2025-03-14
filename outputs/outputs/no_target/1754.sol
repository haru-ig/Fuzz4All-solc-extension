pragma solidity ^0.8.0;
contract Mutate0F {
    address pay _address;
    constructor (uint _a) public {
        _address = address(address(uint160(uint(_a))/32769));
    }
}
contract Mutate0G {
    bytes32 _bytes;
    constructor (uint _a) public {
        _bytes = bytes(uint(address(uint160(uint(_a))/32770)));
    }
}
