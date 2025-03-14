pragma solidity ^0.8.0;
contract ExampleContract {
    uint256 value1;
    uint256 value2;
    uint256 value3;
    string myString;
    bool myBool;
    int myInt;
    uint myUint;
    bool public myBoolPublic;
    address public myAddressPublic;
    mapping(uint => address) public myAddress;
    enum Status {
        ACTIVE,
        INACTIVE
    }
    event LogEvent(uint256 value1, uint256 value2);
    constructor () {
        value1 = 1;
        value2 = 2;
        value3 = 3;
        myString = "Hello";
        myBool = true;
        myInt = 120;
        myUint = 120;
        myBoolPublic = true;
        myAddressPublic = address(this);
        myAddress[1] = address(this);
        LogEvent(value1, value2);
    }
    function setAddress (address payable _address) public {
        myAddressPublic = _address;
    }
        }
