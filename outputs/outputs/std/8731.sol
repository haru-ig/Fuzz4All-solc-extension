pragma solidity ^0.8.0;
contract Example {
address payable _address1;
address payable _address2;
bytes1 _byte;
bytes2 _bytes;
uint8 _u8;
uint16 _u16;
uint32 _u32;
uint64 _u64;
uint128 _u128;
bytes32 _bytes32;
uint _amount;
constructor()  {
        _address1 = payable(0x0);
        _address2 = payable(0x0);
        _byte = bytes1(0);
        _bytes = bytes2(0);
        _u8 = 0;
        _u16 = 0;
        _u32 = 0;
        _u64 = 0;
        _u128 = 0;
        _bytes32 = 0;
        _amount = 0;
    }
}
contract AddArrays {

    function addAndEqual(address x, address y, uint z) public {
        uint _sum = x + y + z;
        x += y;
        y = _sum;
        x = _sum;
        _address1 = x;
        _address2 = y;
    }
}
