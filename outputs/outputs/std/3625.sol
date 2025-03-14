pragma solidity ^0.8.0;
contract Convert {
    uint internal uintValue;
    uint private _uintValue;
    bytes internal bytesValue;
    bytes private _bytesValue;
    address internal addressValue;
    address private _addressValue;
    int256 internal intValue;
    int256 private _intValue;
    function ReturnValues() public view {
        uintValue = 15;
        bytesValue = "Hello";
        addressValue = "Hello";
        intValue = 15;
    }
}
