pragma solidity ^0.8.0;
contract Convert {
    function toUnsigned(string memory str) public pure returns(uint) {
        return uint(uint32(str) >> 256);
    }
    function fromUnsigned(uint u) public pure returns(string memory) {
        bytes memory _strBuff = new bytes(4);
        uint32 _uint = uint32(u);
        _strBuff[0] = byte(_uint);
        _strBuff[3] = byte(_uint >> 8);
        _strBuff[2] = byte(_uint >> 16);
        return string(abi.encodePacked(_strBuff));
    }
    function fromSigned(int s) public pure returns(string memory) {
        return fromUnsigned(-(int(
