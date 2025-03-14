pragma solidity ^0.8.0;
import "../src/Array.sol";



contract Array {
    uint32[] private _myNumbers;

    constructor(uint32[] memory numbers) {
        require(numbers.length > 0);
        _myNumbers = numbers;
    }

    function length() public view returns (uint32) {
        return _myNumbers.length;
    }

    function elementAtIndex(uint32 idx) public view returns (uint32) {
        require(idx < _myNumbers.length);
        return _myNumbers[idx];
    }

    function set(uint32 idx, uint32 value) public {
        require(idx < _myNumbers.length);
        _myNumbers[idx] = value;
    }

    function min() public view returns (uint32) {
        return Math.min(_myNumbers[0], _myNumbers[1]);
    }

    function max() public view returns (uint32) {
        return Math.max(_myNumbers[0], _myNumbers[1]);
    }

    function add(uint32 x, uint32 y) public view returns (uint32) {
        return x + y;
    }

    function sub(uint32 x, uint32 y) public view returns (uint32) {
        return x - y;
    }

    function mul(uint32 x, uint32 y) public view returns (uint32) {
        return x * y;
    }

    function div(uint32 x, uint32 y) public view returns (uint32) {
        return x / y;
    }

    function toBytes() public view returns (bytes memory) {
        bytes memory bs = new bytes(32 * length());
        for (uint i; i < _myNumbers.length; i++) {
            uint32 result = _myNumbers[i];
            bytes1 byteResult = uint8(uint32ToByte(result));
                for (uint8 j = 0; j < 32; j++) {
                bs[i + j * 32] = bytes1(byteResult);
            }
        }
        return bs;
    }

    function toInteger() public view returns (uint32) {
        uint32 hi = uint32(keccak256(toBytes()));
        uint32 lo = uint32(ke
