pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract modified2{
    uint256 x = 0;
    uint256 y = uint16(x);
    uint256 z = uint16(x + 1);
}
