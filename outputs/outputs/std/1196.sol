pragma solidity ^0.8.0;
contract B5 {
    address myAddress;

    mapping(address => int) _storedValues;

    constructor(address initialAddress) {
      myAddress = initialAddress;
    }
    function getAValue() public view returns (int) {
        return _storedValues[myAddress];
    }

    function setAValue(int newValue) public {
        if (newValue >= 0) {
            _storedValues[myAddress] = newValue;
        } else {
            revert();
        }
    }
}
