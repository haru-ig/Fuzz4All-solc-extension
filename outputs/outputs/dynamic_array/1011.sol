pragma solidity ^0.8.0;
contract LotteryWithArrayAccess {
    bool[][] internal _booleanAddressTables;
    uint16[10][] internal _arrayOfUnsignedNumbers;
    uint16[10] internal _arrayOfOneToTenNumbers;
    uint16[] internal _dummyArray;
    mapping (address => bool) internal _mapBooleanAddresses;
    mapping (uint16 => uint8) internal _arrayOfUnsignedNumbers2;
    mapping (uint16 => uint8) internal _dummyArray2;
    event BooleanArrayChanged(address indexed addressTable, bool oldBooleanValue, bool newBooleanValue);
}
