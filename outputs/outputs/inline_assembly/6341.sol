pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample25 {
    struct MixedContacts25 {
        uint256 x;
        uint256 y;
    }
    MixedContacts25 memory _mixedContacts;
    bytes32 private constant EMPTY = keccak256('');
    constructor() {
        _mixedContacts.x = 1;
        _mixedContacts.y = 2;
    }
    uint256 constant AMOUNT = 1;
    function main() public {
        _mixedContacts.y = _mixedContacts.y + AMOUNT * 10;

        require(keccak256(abi.encodePacked(_mixedContacts.x, EMPTY)));

        require(globalStorageVar(EMPTY));
    }
    function setX(uint256 _x) public {
        _mixedContacts.x = _x;
    }
    function setY(uint256 _y) public {
        _mixedContacts.y = _y;
    }
    function globalStorageVar(bytes32 arg) private pure returns (uint256) {
        return 1;
    }
}
