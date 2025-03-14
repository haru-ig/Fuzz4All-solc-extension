pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample25 {
    uint256 data;
    constructor(uint256 newArrayLength) public {
        data = newArrayLength;
    }
    function getContactsLength() public view returns (uint256) {
        return data;
    }
}



contract MixedContactsExample24 is MixedContactsExample25 {
    uint256 y;
    uint256 z;
    constructor(uint256 newContactsY, uint256 newContactsZ, uint256 newContactLength) public MixedContactsExample25(newContactLength) {
        y = newContactsY;
        z = newContactsZ;
    }
}

contract MixedContactsExample25 is MixedContactsExample24 {
    uint256 newArrayLength;
    constructor(uint256 newContactsY, uint256 newContactsZ, uint256 newContactLength) public MixedContactsExample24(newContactsY, newContactsZ, newContactLength) {
        y = newContactsY;
        z = newContactsZ;
    }
    function getArrayLength() public view returns (uint256) {
        return newArrayLength;
    }
}
