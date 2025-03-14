pragma solidity ^0.8.0;
contract Modul {
    mapping (address => uint8[]) numbers;
    uint8[7] numbers =
        [
            0x64,
            0xfa,
            0xf2,
            0x12,
            0x40,
            0xfb,
            0xef
        ];

    function sum() public pure returns (uint) {
        uint sum = 0;
        for (uint i = 0; i < numbers.length; i++) {
            sum += numbers[i];
        }
        return sum;
    }
}
