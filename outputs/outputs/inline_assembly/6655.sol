pragma solidity ^0.8.0;
contract MixedContactsExample6 {
    struct MyStruct {
        uint8 u8;
        uint16 u16;
        uint32 u32;
        uint64 u64;
        uint128 u128;
        uint256 u256;
        uint512 u512;
        uint;
    }
    function myFunc() public pure {
        MyStruct memory myData;
        (u8, u16, u32, u64, u128, u256, u512, uint) =
            MyStruct(0, 0, 0, 0, 0,
                1234567,
                2 * (73 * (2 ** 256) + 33), 123 * (2 ** 259));
    }
}
