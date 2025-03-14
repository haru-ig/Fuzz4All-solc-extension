pragma solidity ^0.8.0;
contract Mutater {
    uint8 count_ = 0;
    fallback()
        external
        payable
    {
        count_ = (count_ <= 255)? count_ + 1 : 0x0;
    }
}
