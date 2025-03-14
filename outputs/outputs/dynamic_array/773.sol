pragma solidity ^0.8.0;
library Test{
    function isTrue(bool _x) pure public returns(uint) { return(_x); }
}
contract C{
    bool boolBool;
    uint uInt;
    uint[] uInts;
    bytes32 bytes32Bytes;
    bytes[] bytesBytes;
    string stringString;
    function isTrue(bool _x) pure public returns(uint) { return(_x); }
}
