pragma solidity ^0.8.0;
contract MutatedAbiCoder2 is AbiCoder2Mutated{
    bytes16 constant internal EMPTY_BYTE = bytes16(0);
    bytes16 external constant ETHER = bytes16(0);
    mapping(bytes16 => uint8) private _toBytes;
    mapping(uint8 => bytes16) private _toType;
    mapping(bytes16 => bytes) private _toBytes32;
    mapping(uint8 => bytes32) private _toType32;

    function encodeType(bytes16 x) public pure returns (bytes memory, bytes memory) {
        bytes memory buf = new bytes(5);
        uint8 t;
        assembly { t := mload(0x40) }
        emit Log1();
        if (t == 1)
        {
            uint to = x;
            assembly {
                mstore(buf, to)
                mstore(buf+24, 0)
            }
        }
        else if (t == 2)
        {
            uint to = uint8(x);
            assembly {
                mstore(buf, to)
                mstore(buf+24, 0)
            }
        }
        else if (t == 3)
        {
            uint to = uint16(x);
            assembly {
                mstore(buf, to)
                mstore(buf+24, 0)
            }
        }
        else if (t == 4)
        {
            bytes32 to = x;
            assembly {
                mstore(buf, to)
                mstore(buf+24, 0)
            }
        }
        else
        {
            emit Log2(t, x);
        }
        return (buf, EMPTY_BYTE);
    }
    function encodeType(uint8 x) public pure returns (bytes memory, bytes memory) {
        bytes memory buf = new bytes(4);
        uint8 t;
        assembly { t := mload(0x40) }
        emit Log1();
        if (t == 1)
        {
            uint to = uint8(x);
            assembly {
                mstore(buf, to)
                mstore(buf
