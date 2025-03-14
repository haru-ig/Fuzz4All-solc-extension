pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample21 {
    function main(
        MixedContacts memory oldContacts,
        uint256 z
    ) public pure returns (MixedContacts memory){
        return MixedContacts({y: oldContacts.y, z: z});
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample22 {
    function main(
        MixedContacts memory oldContacts,
        MixedContacts memory newContacts
    ) public pure returns (MixedContacts memory){
        oldContacts = oldContacts;
        return MixedContacts({y: oldContacts.y + oldContacts.z, z: newContacts.y - newContacts.z});
    }
}
contract MixedContactsExample23 {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    function main(
        uint256 y,
        uint256 z
    ) public pure returns (MixedContacts memory){
        MixedContacts memory contacts = MixedContacts({y: y, z: z});
        return MixedContacts(y,z);
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample24 {
    function main(
        MixedContacts memory oldContacts,
        MixedContacts memory newContacts
    ) public pure returns (MixedContacts memory){
        oldContacts = oldContacts;
        return MixedContacts({y: oldContacts.y + newContacts.z, z: newContacts.y - oldContacts.z});
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
