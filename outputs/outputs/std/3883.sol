pragma solidity ^0.8.0;
interface ITokenAddress{
    event ChangedAddress(
        address indexed previousAddress,
        address indexed newAddress
    );
}
