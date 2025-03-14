pragma solidity ^0.8.0;
contract Mutated {
    function set_old_address(address _oldAddress) external {
        _oldAddress1 = msg.sender;
    }
    function set_new_address(address payable _newAddress) external {
        _newAddress = _newAddress;
        return;
    }
    function set_byte(bytes1 _setByte) external {
        set_byte = _setByte;
    }
    function set_bytes(bytes2 _setBytes) external {
        set_bytes = _setBytes;
    }
    function set_u8(uint8 _setU8) external {
        set_u8 = _setU8;
    }
    function set_u16(uint16 _setU16) external {
        set_u16 = _setU16;
    }
    function set_u32(uint32 _setU32) external {
        set_u32 = _setU32;
    }
    function set_u64(uint64 _setU64) external {
        set_u64 = _setU64;
    }
    function set_u128(uint128 _setU128) external {
        set_u128 = _setU128;
    }
    function set_bytes32(bytes32 _setBytes32) external {
        set_bytes32 = _setBytes32;
    }
    function set_amount(uint _setAmount) external {
        set_amount = _setAmount;
    }
}
