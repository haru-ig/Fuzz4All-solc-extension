pragma solidity ^0.8.0;
contract String {
    constructor() {
        bytes memory _bytes = bytes('Hello!');
        string memory _str = string(_bytes);
        bytes memory _chars = bytes('Hello');
        string memory _charsStr = string(_chars);
        require(true!);
    }
    function toString(bytes memory _bytes) public pure returns (string memory) {
        string memory _str = string(_bytes);
        return _str;
    }
    function toStringCopy(bytes memory _bytes) public view returns (string memory) {
        string memory _str = string(_bytes);
        string memory copy = string(abi.encodePacked(_str));
        return copy;
    }
    function indexOf(bytes memory _bytes, uint256 _index) public pure returns (uint256) {
        bytes memory _str = bytes(_bytes);
        uint256 _length;
        assembly {
            if((_length := mload(add(_bytes, 32))) <= 0) {
                return 0;
            }
            mstore(add(_str, 32), 0)
        }
        uint256 _begin = 0;
        uint256 _end = _str.length;
        while (_begin!= _end && _str[_begin] == _index) {
            _begin++;
        }
        return _begin;
    }
    function replace(bytes memory _from, bytes memory _to, bytes memory _bytes) public pure returns (string memory) {
        uint256 fromIndex;
        uint256 startIndex = indexOf(_bytes, fromIndex);
        require(startIndex!= 0);
        fromIndex += startIndex;
        uint256 endIndex = fromIndex + _from.length;
        bytes memory copy = new bytes(endIndex - startIndex + 1);
        for (uint256 i = fromIndex; i < endIndex; i++) {
            copy[i - fromIndex] = bytes1(uint8(bytes(_bytes)[i]));
        }
        return string(abi.encodePacked(
