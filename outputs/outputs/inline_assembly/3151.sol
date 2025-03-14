pragma solidity ^0.8.0;
contract BData {
    uint8 constant DATA_0 = 0;
    uint8 constant DATA_BYTE = 1;
    struct BData {
        uint id;
        bytes1 name;
        bytes2 number;
        bytes3 boolVal;
        mapping (uint => address) users;
    }
    mapping(uint => BData) public balances;
}
contract C {
    struct BData {
        uint id;
        uint256 value;
    }
    mapping(uint => BData) public balances;
}
contract C2 {
    uint i;
    assembly {
        let _0 := 0
        i := add(
            mul(load32(add(0x20, 0x002000)), not(mload32(add(0x20, 0x002000)))),
            mul(load32(add(0x20, 0x002000))),
            mul(load32(add(0x20, 0x002000))),
            mul(mload(add(0x20, 0x002000)), not(load32(add(0x20, 0x002000))), mload32(add(0x20, 0x002000))),
            mul(mload(add(0x20, 0x002000))),
            mul(mload(add(0x20, 0x002000))),
            mul(mload(add(0x20, 0x002000))),
            mul(mload(add(0x20, 0x002000))),
            mul(mload(add(0x20, 0x002000))),
            mul(mload32(add(0x20, 0x002000))),
        ),
        _0 := add(
            div(div(div(sub(_0, sub(_0, sub(_0, sub(_0, sub(_0, sub(_0, sub(_0, sub(_0, sub(_0, sub(_0))))))))), mload(add(0x20, 0x002000))), mload32(add(0x20, 0x002000))), mload(add(0x20, 0x002000))), div(div(sub(_0, sub(_0, sub(_0, sub(_0, sub(_0, sub(_0, sub(_0)))))))),
