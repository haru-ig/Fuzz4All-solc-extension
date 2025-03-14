pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample21 {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    function main(
        MixedContacts memory oldContacts
    )
    public
    pure
    returns (MixedContacts memory){
        oldContacts = oldContacts;
        return MixedContacts({y: oldContacts.y + 1, z: oldContacts.y - 1});
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

contract MixedContactsExample22 is MixedContactsExample19 {}
contract MixedContactsExample23 is MixedContactsExample19 {
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
contract MixedContactsExample24 {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    function main(
        MixedContactsExample19.MixedContacts memory oldContacts,
        MixedContactsExample23.MixedContacts memory newContacts
    )
    public
    view
    returns (MixedContacts memory){
        MixedContactsExample19.MixedContacts memory oldOldContacts = oldContacts;
        MixedContactsExample19.MixedContacts memory oldNewContacts = newContacts;
        oldContacts = oldOldContacts;
        return MixedContacts({y: oldNewContacts.y + oldNewContacts.z, z: oldNewContacts.y - oldNewContacts.z});
    }
}
