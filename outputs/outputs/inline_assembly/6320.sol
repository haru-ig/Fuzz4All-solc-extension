pragma solidity ^0.8.0;
contract MixedContactsExample21 {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    uint256 a;
    uint256 b;
    uint256 c;
    function main() public view returns (MixedContacts memory){
        b.transfer(3);
        return main(MixedContacts({y: a, z: b}), MixedContacts({y: c, z: a}));
    }
}
contract MixedContactsExample22 {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    function main(
        MixedContacts memory oldContacts,
        MixedContacts memory newContacts
    )
    public returns (MixedContacts memory){
        oldContacts = oldContacts;
        uint256 diff = oldContacts.y - newContacts.y - oldContacts.z - newContacts.z;
        if (diff < 0){
            oldContacts.y = newContacts.y + newContacts.z;
            oldContacts.z = new - newContacts.y;
        }
        else {
            oldContacts.y = newContacts.y - newContacts.z;
            oldContacts.z = new - newContacts.y;
        }
        return oldContacts;
    }
}
