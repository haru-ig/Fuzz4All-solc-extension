pragma solidity ^0.8.0;
contract modified4{
    bytes32 x;
    uint16 w = uint16((uint256(uint16(x))) + 1);
}
