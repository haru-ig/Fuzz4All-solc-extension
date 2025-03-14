pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample19 {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    uint256 x;
    event MyEvent(MixedContacts memory oldContacts, MixedContacts memory newContacts);
    function main(
        MixedContacts memory oldContacts,
        uint256 data
    )
    public view returns (MixedContacts memory){
        oldContacts = oldContacts + MixedContacts(x, x);
        emit MyEvent(oldContacts, oldContacts);
        return oldContacts;
    }
}
