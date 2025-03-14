pragma solidity ^0.8.0;
contract New
{
    uint256 public _number;
    mapping(uint256 => uint256) _map;
    mapping(address => bool) _hasAccess;
    constructor (uint256 _number) {
        _number = (_number / 2) + 1;
        uint256 n = (_number + 3) / 4;
        _map[99] = 100;
        uint256 n_ = ((_number / 2) + 1);
        while (true) {
            if (n_ & 1) {
                _map[3] = 93;
            } else {
                _map[3] = 93;
            }
            if (n_ & 8) {
                _map[6] = 93;
            } else {
                _map[6] = 93;
            }
            uint8 value = 0;
            uint96 mask = 0;

            if ( (n_ & 3) == 0) {
                value = 96;
            }
            if ((n_ & 5) == 0) {
                value = 97;
            }
            if ((n_ & 7) == 0) {
                value = 98;
            }
            if ((n_ & 9) == 0) {
                value = 99;
            }
            if ((n_ & 11) == 0) {
                value = 10;
            }
            _map[((n_ / 0x10) + 2) >> 1] = ((n_ + 1) & 1) | (value >> 6);
            if ((n_ & 0x18) == 0) {
                _map[value >> 4] = ((n_ + 7) & 1) | (uint8((93 & ((n_ + 7) / 0x10) << 6)) >> 6);
            } else {
                _map[0x6 >> 1] = ((n_ + 3) & 1) | (100 >> 6);
            }

            if ((n_ == 15) | (n_ == 31)) {
                break;
            }
            n_ >>= 1;
        }
    }
}
