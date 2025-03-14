pragma solidity ^0.8.0;
contract Array {
}


interface Convert {
    function stringToBytes(string calldata _string) public pure returns (bytes memory);
    function utf8ToBytes(string calldata _string) public pure returns (bytes memory);
    function bytesToString(bytes memory _bytes) public pure returns (string memory);
    function bytesToAsciiString(bytes memory _bytes) public pure returns (string memory);
    function asciiStringToBytes(string calldata _ascii) public pure returns (bytes memory);
    function asciiToUtf8String(string memory _ascii) public pure returns (string memory);
    function utf8StringSize(string calldata _utf8) public pure returns (uint256 _utf8SizeBytes);
    function utf8StringToBytes(string memory _utf8) public pure returns (bytes memory);
}
