pragma solidity ^0.8.0;
contract Array {
    uint internal arrayOfUints_current;
    bytes internal arrayOfBytes_current;
    address internal arrayOfAddresses_current;
    mapping (uint => mapping (uint256 => uint256)) private mappingOfArrayToSixElements;
    mapping (uint => address) private mappingOfArrayToAddress;
    mapping (uint => int256) private mappingOfArrayToInt256s;

    uint private _maxUint;
    uint private _maxBytes;
    uint private _maxAddress;
    mapping (uint => bool) private mappingOfArrayToHasSixElements;

    address private _owner;
}
