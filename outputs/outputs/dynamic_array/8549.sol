pragma solidity ^0.8.0;
interface Interface {
    function readStruct() returns (StructWithNestedArrays memory);
}

pragma solidity ^0.8.0;
contract Test is Interface {

    function readStruct() public pure returns (StructWithNestedArrays memory) {
        bytes[] memory values = new bytes[](1);
        uint256[] memory testUint = new uint[](2);
        uint256[] memory testUlong;
        uint256[] memory testUint64;
        uint256[] memory testUintBig;
        string memory testString;
        bytes32 testBytes32;
        bool testBoolean;
        address testAddress;
        bytes testBytes;
        bytes8 testBytes8;
        bytes8 testBytesLong;
        bytes8 testBytesLong1;
        bytes8 testBytesUninitialized;
        bytes8 testBytesUninitialized1;
        bytes32 testBytes32Big;
        bytes32 testBytes32Big1;
        bytes4 testBytes4;
        uint256 testUint256;
        uint256 testUint256Big;
        uint testUint64Big;
        uint testUintUninitialized;
        uint testUintUninitialized1;
        uint testUint8;
        uint testUint64WithUninitialized;
        uint testUint64WithUninitialized1;
        uint testUint8Big;
        uint testUint8Big1;
        uint testUint8Uninitialized;
        uint testUint8Uninitialized1;
        uint testUint64Uninitialized;
        uint testUint64Uninitialized1;
        uint256 testUint256Uninitialized;
        uint256 testUint256BigUninitialized;
        uint256 testUint256BigUninitialized1;
        uint256 testUint256WithUninitialized;
        uint256 testUint256WithUninitialized1;
        uint256 testUintUninitialized;
        uint256 testUintUninitialized1;
        uint256 testUint16Big;
        uint256 testUint16Big1;
        uint64 testUint32;
        uint64 testUint8Big64;
        uint testUint16Big64;
        uint testUint16Uninitialized;
        uint testUint64Uninitialized1;
        uint testUint32Big;
        uint testUint8WithUninitialized;
        uint testUint4;
        uint testUint4Uninitialized;
        uint testUint
