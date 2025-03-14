pragma solidity ^0.8.0;
contract Array {
    uint internal arrayOfUints_current;
    bytes internal arrayOfBytes_current;
    address internal arrayOfAddresses_current;
    mapping (uint => uint[]) private mappingOfArrayToArraysOfSixElements;
    mapping (uint => address) private mappingOfArrayToAddresses;
    mapping (uint => int256) private mappingOfArrayToInt256;
    uint private _maxUint;
    uint private _maxBytes;
    uint private _maxAddress;
    mapping (uint => bool) private _arrayHasSixElements;
    address private _owner;
}
