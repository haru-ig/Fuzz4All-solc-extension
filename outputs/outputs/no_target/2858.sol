pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutatedStorage {

    constructor(uint _b) public {
        b = _b;
    }

    uint b;
    uint c;

    function set(uint _value) public {
        c = (_value + b);
        b += _value;
    }
    function get() public view returns (uint) {
        return c;
    }
}


pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

contract MutatedStorage{
    uint b;
    uint c;
    bytes32 public constant MAGIC_VALUE = 0x14172437000000b7;

    constructor() public {
        b = 0;
    }

    function set(uint _value) public{
        bytes32 _magicValue = 0x080719988e370ddf;
        uint _bytes32Value = magicValue.length / 2;
        bytes memory _data = ABI.encodePacked(b, _magicValue);
        assembly {
            let position := 0

            mstore(_data, position, _value)

            mstore(0, position, mload(_data))
            b := add(c, _bytes32Value)
        }
    }

    function get() public view returns (uint) {
        bytes memory _data = bytes(c);
        uint _value = 0
        for (uint i = 0; i < bytes(_data).length; i++) {
            bytes1 _byte = byte(byte(bytes(_data)[i]));
            _value += shift(256, 8*_byte);
        }
        return _value;

    }
}
