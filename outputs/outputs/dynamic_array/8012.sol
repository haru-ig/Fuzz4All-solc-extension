pragma solidity ^0.8.0;
contract Test47 {
    bool boolVar;
    uint8 byteVar;
    uint16 shortVar;
    uint32 intVar;
    uint64 longVar;
    uint8 charVar;
    uint[] uintArray;
    bool[] boolArray;
    uint8[] byteArray;
    uint16[] shortArray;
    uint32[] intArray;
    uint64[] longArray;
    uint8[] charArray;
    address addressVar;
    address[] addressArray;
    function set(uint _x, uint _y, uint256 _z) public {
            boolVar = true;
            byteVar = 0;
            shortVar = 0;
            intVar = 0;
            longVar = 0;
            charVar = 0;
            uintArray = [0, 1, 2, 3];
            boolArray = [true, false, false];
            byteArray = [0, 1, 2, 3];
            shortArray = [0, 1];
            intArray = [0, 1];
            longArray = [0, 1, 2];
            charArray = [0, 1, 2, 3];
            addressVar = address(uintVar);
            addressArray = [addressVar, addressVar, addressVar];
    }
}
