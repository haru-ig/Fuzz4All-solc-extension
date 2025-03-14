pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample21 {
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
        newContacts.y += oldContacts.y + oldContacts.z;
        return MixedContacts({y: newContacts.y, z: oldContacts.z});
    }
}
contract MixedContactsExample22 {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    function main() public returns (MixedContacts memory){
        return MixedContacts({y: a, z: b});
    }
}
contract MixedContactsExample23 {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    function main() public returns (MixedContacts memory){
        return MixedContacts({y: a, z: b});
    }
}
contract MixedContactsExample24 {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    function main() public returns (MixedContacts memory){
        return MixedContacts({y: a, z: b});
    }
}
contract MixedContactsExample25 {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    function main(MixedContacts memory oldContacts) public view returns (MixedContacts memory){
        oldContacts = oldContacts;
        return MixedContacts({z: 10, y: 20});
    }
}
contract MixedContactsExample26 {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    constructor() public {
        a = 3;
        b = 4;
        c = 5;
    }
