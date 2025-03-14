pragma solidity ^0.8.0;
interface Converter {
    function toString(uint _int) external pure returns (string memory);
    function toUint(string memory _str) external pure returns (uint) returnsError (String);
    function compareStrings(string memory _str1, string memory _str2) external pure returns(bytes32);
    function toSignedByte(string memory _str) external pure returns (int);
    function uintToString(uint _uint) external pure returns (string memory);
    function signedByteToUint(int _int) external pure returns (uint8);
    function parse128(bytes12 _b128) public pure returns  (uint128 returnValue);
}
