pragma solidity ^0.8.0;
contract Main {
    uint8[] public internal1;
    uint8[] public internal2;
    uint8[][] internal inline1;
    uint8[][] internal inline2;
    uint8[][][] public subarr;
    uint8[][] nonInline2;
    address addr;
    uint internal3;
    uint8 public internalPublic1;
    uint8 public internalPublic2;
    uint16 constant internal16 = 16;
    uint internal32;
    uint public nonInlinePublic1;
    uint8 nonInlinePublic2;
    constructor(uint32 _internal32, uint8 _internalPublic1, uint8 _internalPublic2, uint256 _internal16)public {
        addr = 0x0000000000000000000000000000000000000001;
        internal1.push(1);
        internal2.push(2);
        internal3 = _internal32;
        internal32 = _internal32;
        internalPublic1 = _internalPublic1;
        internalPublic2 = _internalPublic2;
        internal16 = _internal16;
    }
    function getInternalPublic()public view returns (uint8) {
        return internalPublic2;
    }
}
