pragma solidity ^0.8.0;
contract TestArrayMemory3 {
    uint8[6] public bytearray;
}


pragma solidity ^0.8.0;
contract TestMemoryArrayAccess {
    uint[] public memoryArray;
    uint8[6] public memoryBytearray;
    address[] public memoryAddressArr;
    uint[2] public memoryUIntegerArr;
    mapping(uint256 => uint256) public memoryMapping;
    mapping(address => uint8[6]) public memoryAddressArray;
    uint public integerConstant = 3;
    uint256 public uintConstant = 4;
    uint8 public uint8Constant = 1;
    constructor () {
        memoryArray.push(uint256(5));
        memoryArray.push(uint256(6));
        memoryArray.push(uint256(7));
        memoryArray.push(uint256(3));
        memoryArray.push(uint256(2));
        memoryArray.push(uint256(6));
        memoryArray.push(uint256(7));
        memoryArray.push(uint256(7));
        memoryArray.push(uint256(5));
        memoryArray.push(uint256(6));
        memoryArray.push(uint256(2));
        memoryArray.push(uint256(6));
        memoryArray.push(uint256(7));
        memoryArray.push(uint256(7));
        memoryBytearray[0] = uint8(2);
        memoryBytearray[1] = uint8(3);
        memoryBytearray[2] = uint8(4);
        memoryBytearray[3] = uint8(4);
        memoryBytearray[4] = uint8(5);
        memoryBytearray[5] = uint8(5);
        memoryBytearray[6] = uint8(5);
        memoryBytearray[7] = uint8(5);
        memoryAddressArr.push(0x0000000000000000000000000000000000000000);
        memoryAddressArr.push(0x8000000000000000000000000000000000000);
        memoryUIntegerArr[0].set(0xffffffff0000000000000000000000000000000);
        memoryUIntegerArr[0].set(0xffffffffffffffff);
        memoryUIntegerArr[1].set(0xfffffff0ffffffff);
    }
    function getArrPointer(uint i) internal view returns (uint j) {
        j = 0;
        while (true) {
