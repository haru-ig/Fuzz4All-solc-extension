pragma solidity ^0.8.0;
contract NonMutatedContract {
    address owner;
    uint constant minValue = 0;
    uint constant increment = 1;
    uint constant maxValue = 99;
    uint constant minNumber = 0;
    uint constant incrementNumber = 1;
    uint constant maxValueNumber = 10;
     string public messageWithAString;
    string constant messageWithAConstant = "String value";
    bytes32 constant messageWithABytes32 = "bytes32 value";
     uint constant messageWithANumberString = minValue;
      uint constant messageWithANumber = minValue;
    uint constant messageWithANumber128 = minValue;
    uint constant messageWithANumber128Hex = "0x" + "55f14";
    uint constant messageWithANumberHex = 0x55f14;
}

pragma solidity ^0.8.0;
contract SingleMutatedContract {
    address owner;
    uint160 nonmutatedResult160;
    uint constant minValue160 = 0;
    uint constant increment160 = 1;
    uint constant maxValue160 = 99;
    uint constant minNumber160 = 0;
    uint constant incrementNumber160 = 1;
    uint constant maxValueNumber160 = 10;
    uint160 constant min160Number160 = 0;
    uint160 constant increment160Number160 = 1;
    uint160 constant maxValue160Number160 = 127;
    bytes32 nonmutatedResultBytes32;
    uint256 nonmutatedResultUint256;
    uint numberNonmutatedUint;
    uint numberNonmutatedNumber;
    uint constant minValueNumberConstant = 0;
    uint constant incrementNumberConstant = 1;
    uint constant maxValueNumberConstant = 99;
}
