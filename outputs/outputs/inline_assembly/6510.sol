pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample69 {
    bytes public contactKey;
    bytes public contactsKey;
    bytes public defaultKey;
    bytes public keysKey;

    uint256 public a;
    uint256 public b;
    uint256 public c;

    constructor(bytes memory defaultKey_, bytes memory keysKey_) {
        contactKey = defaultKey_;
        contactsKey = keysKey_;
        defaultKey = defaultKey_;
        keysKey = keysKey_;
    }



    function setAB(bytes memory key_) public {
        contactKey = key_;
        contactsKey = key_;
        defaultKey = key_;
        keysKey = key_;
    }
    function getValue() public view returns (bytes memory) {
        return contactKey;
    }
    function runCall() public pure {
        bytes memory val = getValue();
        bytes memory dfl = defaultKey;
        bytes memory keysr = keysKey;
        bytes memory conkey = contactKey;
    }
}
