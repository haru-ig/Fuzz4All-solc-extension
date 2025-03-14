pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample19 {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    uint256 a;
    uint256 b;
    uint256 c;
    function main() public returns (MixedContacts memory){
        a = 3;
        b = 4;
        c = 5;
        return MixedContacts({y: a, z: b});
    }
}
contract MixedContactsExample20 {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    function main(
        MixedContacts memory oldContacts,
        MixedContacts memory newContacts
    )
    public view returns (MixedContacts memory){
        oldContacts = oldContacts;
        return MixedContacts({y: newContacts.y + newContacts.z, z: newContacts.y - newContacts.z});
    }
}
