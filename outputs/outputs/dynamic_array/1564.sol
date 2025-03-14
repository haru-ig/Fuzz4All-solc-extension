pragma solidity ^0.8.0;
contract MutatedDynamicArraysV2 {

    address addresses = [0x1A67B7F84b0405F3C1E24AF671689D7664c46559];
    uint32[] uint32s = [0x00000000];
    mapping(string => uint32) stringsToUint32s = [bytes("bytesstring") => 0x00000000];

    mapping (uint32 => uint32) uint32sToUint32;

    mapping (bytes => uint32) stringToBytesToUint32;


}
