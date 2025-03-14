pragma solidity ^0.8.0;
struct SomeStruct{
    uint16 one;
    uint8 two;
    uint16 three;
    uint twoWithLength;
    uint32 four;
    uint64 five;
    uint oneWithLength;
    uint[16] six;
    uint8 seven;
}
contract SomeStructMut is SomeStruct {
    uint78 eight;
    uint256 nine;
    uint32 number10;
    uint[7] ten;
    uint123 tenWithLength;
    uint[15] eleven;
    uint8 x;
    bytes32 y;
    bytes56 z;
    function getByte() public pure returns(uint8) {
        return bytes8_value(bytes9_value());
    }
    function getBytes() public pure returns (bytes56) {
        return bytes(bytes10_value());
    }
    function getLength() public pure returns (uint32) {
        return length(bytes11_value());
    }
    function getAddress() public pure returns(address) {
        return address12_value();
    }
    function getArrayOfAddresses() public pure returns (address[]) {
        return addressArray13_value();
    }
}
contract Caller {
    function foo() public {
    }
}
