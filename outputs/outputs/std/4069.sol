pragma solidity ^0.8.0;
struct ByteMap {
    mapping (bytes => uint) valueMap;
}
contract ByteArray {
    mapping (uint => bytes) arrayMap;
}
contract ByteIndexArray {
    mapping (address => uint ) arrayMap;
}
contract BytesArrayAndByte32Bit {
    ByteMap map1;
    mapping (uint => bytes) arrayMap;
}
contract Bytes32ArrayAndByte32Bit {
    ByteMap map1;
    mapping (uint => bytes32) arrayMap;
}
contract Bytes32AndByte32Bit {
    ByteMap map1;
    ByteArray array1;
    mapping(bytes32 => bytes) arrayMap;
}
contract TwoByteByteMaps {
    mapping(address => mapping (bytes2 => bytes)) map1;
}
contract TwoByteByteArrays {
    mapping(address => mapping (bytes2 => bytes)) array1;
}
contract ByteMapAndByteMapArray {
    mapping (bytes => mapping (bytes => uint)) array1;
}
contract TwoAddrMapping {
    mapping(address => address) map1;
}
contract TwoAddressByteArrays {
    mapping(address => mapping (bytes => bytes)) array1;
 }
contract TwoByteByteArraysAndByteMapArray {
    int8[2] array1;
    mapping (bytes => mapping (bytes => uint)) array21;
    mapping (bytes => mapping (bytes2 => uint)) array22;
}
contract TwoAddressByteMapsAndByteArrays {
    int8[2]  int1281;
    mapping (address => mapping (uint8 => bytes)) array1;
    mapping (address => mapping (uint8 => bytes2)) array22;
}
contract StringAndStringArray {
    string[] public arrayVar;
    function getStringArray() public returns (string[]){
        return arrayVar;
    }
}
contract StringAndStringArrayAndMapping {
    string[] public arrayVar;
    mapping (bytes32 => uint) mapVar;
    bool flag;
    string private testString;
    function getAddress() public returns (address) {
        if(flag){testString = "Hello World";}
        return address(this);
    }
    function set(bytes32 key, uint value) public {
        mapVar[key] = value;
        arrayVar.push("");
        if(flag){testString = "HelloWorld";}
    }
}
