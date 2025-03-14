pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample21 {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    function main() public view returns (MixedContacts memory){
        MixedContacts memory nextContacts = MixedContacts({y: a, z: b});
        nextContacts = nextContacts.combine(MixedContacts({y: a * b, z: 0}));
        return nextContacts;
    }
}
