pragma solidity ^0.8.0;
contract Memory {
    address _address;
    bytes12[] private _addresses;
    bytes32[] private _data;
}
contract Malicious {
    bytes12 _address;
    bytes32 _data;
}
contract Array {
    mapping (uint => uint) _indices;
    mapping (uint => uint) _values;
    uint _length;
}

pragma solidity ^0.8.0;
contract Array {
    mapping (uint => uint) _indices;
    mapping (uint => uint) _values;
    uint _length;
    constructor(uint arrayLength) {
        _length = arrayLength;
        for (uint i = 0; i < arrayLength; i++) {
            _indices[i] = 0;
        }
    }
}

pragma solidity ^0.8.0;
contract Malicious {
    uint8[] _value;
    uint _length;
    constructor(uint length) {
        _value = new uint8[](length);
        _length = length;
        for (uint i = 0; i < length; i++) {
            _value[i] = 0;
        }
    }
}

pragma solidity ^0.8.0;
contract Malicious {
    uint _value;
    uint _length;
    constructor(uint length) {
        _length = length;
        _value = 0;
        for (uint i = 0; i < length; i++) {
            _value = _value * 2;
        }
    }
    function getBytes() public pure returns (uint[] memory) {
        return new uint[](2048);
    }
    function getBytes1() public pure returns (uint[] memory) {
        return new uint[](32);
    }
    function getBytes2() public pure returns (uint32[] memory) {
        return new uint32[](4);
    }
    function getBytes3() public pure returns (uint256[] memory) {
        return new uint256[](32);
    }
    function getBytes4() public pure returns (int8[] memory) {
        return new int8[](32);
    }
    function getBytes5() public pure returns (int16[] memory) {
        return new int16[](256);
    }
    function getBytes6() public pure returns (int32[] memory) {
        return new int32[](128);
    }
    function getBytes7() public pure returns (int64[] memory) {
        return new int64[](64);
    }
    function getBytes8() public pure returns (uint8[] memory) {
        return new uint8[](256);
    }
    function getBytes9() public pure returns (uint
