pragma solidity ^0.8.0;
contract C {
    uint256[2] public _storage = [0, 0];
    uint256 public _array; uint256[1] public _nestedArray; uint256[1][4] public _arrayOfNested;
    address[2] public _arrayOf;
    address[1] public _arrayOfAddresses;
    address[1][4] public _arrayOfAddressAndUInt;
    uint16[2] public _arrayOf2UInt;
    uint256 public __ArraySize;
    uint256[0] public _memory; uint256[4] public __Memory;
}




contract C {
    uint256[1] public _array; uint256[1][5] public _arrayOf; uint256[2];
    function f() {
        uint256[2] memory x = [1, 2];
        uint256 memory y;
    }
}
