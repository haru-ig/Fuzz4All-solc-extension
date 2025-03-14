pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample21 {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    uint256 a;
    uint256 b;
    uint256 c;
    MixedContacts storage oldContacts = MixedContacts({y: 0, z: 0});
    MixedContacts storage newContacts = MixedContacts({y: 0, z: 0});
    function main(
        bool isFirst
    )
    public
        returns (
          MixedContacts memory,
          bool isLast,
          MixedContacts memory
        ){
        oldContacts = oldContacts;
        newContacts = isFirst? newContacts : oldContacts;
        if (newContacts.y < newContacts.z) {
            isLast = false;
            oldContacts = newContacts;
            newContacts.z -= 1;
        } else {
            newContacts.y -= 1;
            isLast = true;
        }
        newContacts.y = isFirst? getPrev(oldContacts.z, newContacts.y) : getPrev(oldContacts.y, newContacts.y);
        newContacts.z = isFirst? getPrev(oldContacts.z, newContacts.z) : getPrev(oldContacts.z, newContacts.z);
        bool signChanged = signChange(oldContacts, newContacts);
        isLast = isLast || signChanged;
        return (
          newContacts,
          isLast,
          MixedContacts({y: 0, z: 0})
        );
    }
    function signChange(
        MixedContacts memory oldContacts,
        MixedContacts memory newContacts
    )
    public
    pure
    returns (bool signChanged){
        signChanged = oldContacts.y!= newContacts.y;
        oldContacts.z = oldContacts.y;
        newContacts.y = newContacts.z;
        newContacts.z = getPrev(oldContacts.z, oldContacts.z);
    }
