pragma solidity ^0.8.0;
contract Contract15Mut{
    event SetNewAddress(address indexed oldAddress, address indexed newAddress);
    address public addr;
