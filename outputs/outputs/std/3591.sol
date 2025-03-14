pragma solidity ^0.8.0;
struct AddressAndUint {
    address addr;
    mapping (address => uint) balanceOf;
}
