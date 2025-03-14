pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample19 {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    function main(
        MixedContacts memory oldContacts,
        MixedContacts memory newContacts,
        MixedContacts memory result
    )
    public view returns (MixedContacts memory){
        oldContacts = oldContacts;
        newContacts = newContacts;
        result = newMcontacts;
        return result;
    }
}
