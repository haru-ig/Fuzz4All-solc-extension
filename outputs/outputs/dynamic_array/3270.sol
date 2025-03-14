pragma solidity ^0.8.0;
contract Mut9b {
    event e(uint32 x, uint32 y, uint8 z);
    uint8[20] internal a1_uint8Arr;
    uint32 internal a2_uint32Var;
    mapping(bytes32 => uint32) internal dict;
    function set(bytes32 key, uint8 value) public {
        dict[key];
        e(value, 100, int8(42));
        dict[key] = value;
        event e(value, 100, -1 * int8(42));
    }
    function setBool(bytes32 key, bool value) public {
        dict[key];
        e(uint8(value), 200, value);
        dict[key] = value;
        event e(uint8(value), 200,!value);
    }
    function setString(bytes32 key, string calldata s) public {
        dict[key];
        e(uint8(uint160("123")), 300, s);
        dict[key] = uint160("123");
        event e(uint8(uint160("123")), 300, s);
    }
    function setUint8Arr(bytes32 key, uint8[] calldata values) public {
        a1_uint8Arr;
        dict[key];
        e([1, 2, 3], 400, int8(42));
        dict[key] = [1, 2, 3];
        event e([1, 2, 3], 400, uint8(45));
    }
    function setUint8Arr8(bytes32 key, bytes8[6] memory values)public {
        a1_uint8Arr;
        dict[key];
        e([1, 2, 3, 4, 5, 6], 500, 128);
        dict[key] = [1, 2, 3, 4, 5, 6];
        event e([1, 2, 3, 4, 5, 6], 500, uint8(15));
    }
    function setUint8Arr8WithDynamic(bytes32 key, bytes8 values) public {
        a1_uint8Arr;
        dict[key];
        e([1, 2,
