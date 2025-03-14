pragma solidity ^0.8.0;
contract MutatedApp_3 {

    struct AddressData {
       uint224 addr;
       string name;
    }
    mapping (address => AddressData) memTable;
    address public memKey;
    address public memValue;
    address internal memKeyInternal;
    address mutativeAddress;
    address public memAddress = address(0);
    string public strValue;
    bytes32 public strKey;
    bytes32 public strAddress;
}
