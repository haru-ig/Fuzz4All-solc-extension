pragma solidity ^0.8.0;
contract Mutated3 {

    address payable _oldAddress1;
    address payable public _oldAddress2;
    address payable public set_new_address;
    bytes1 public set_byte;
    bytes2 public set_bytes;
    uint8 public set_u8;
    uint16 public set_u16;
    uint32 public set_u32;
    uint64 public set_u64;
    uint128 public set_u128;
    bytes32 public set_bytes32;
    uint8 public set_first_byte;
    uint8 public set_second_byte;
    uint8 public set_third_byte;
    uint8 public set_fourth_byte;
    uint8 public set_fifth_byte;
    uint256 public set_amount;


    constructor(address payable _newAddress1, address payable _newAddress2, bytes1 _byte, bytes2 _bytes, uint8 _u8, uint16 _u16, uint32 _u32, uint64 _u64, uint128 _u128, bytes32 _bytes32, uint8 _firstByte, uint8 _secondByte, uint8 _thirdByte, uint8 _fourthByte, uint8 _fifthByte, uint256 _amount)
        public
    {
        _oldAddress1 = _newAddress1;
        _oldAddress2 = _newAddress2;
        set_new_address = _newAddress2;
        set_byte = _byte;
        set_bytes = _bytes;
        set_u8 = _u8;
        set_u16 = _u16;
        set_u32 = _u32;
        set_u64 = _u64;
        set_u128 = _u128;
        set_bytes32 = _bytes32;
        set_first_byte = _firstByte;
        set_second_byte = _secondByte;
        set_third_byte = _thirdByte;
        set_fourth_byte = _fourth
