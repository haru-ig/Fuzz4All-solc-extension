pragma solidity ^0.8.0;
contract InlineAssembly8 {
    address myAddress;
    bytes memory buffer;
    uint16 value;

    assembly {
        myAddress := mload(0x40)
        value := and(0x18080000000000000000000000000000000000000000000000000001, buffer)
    }
}
