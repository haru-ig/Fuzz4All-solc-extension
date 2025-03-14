pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample21 {
    struct MixedContacts20 {
        uint256 a;
        uint256 b;
        uint256 c;
    }
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
        return MixedContacts20({a: a, b: b, c: c});
    }
}
contract MixedContactsExample22 {
    struct MixedContacts21 {
        uint256 a;
        uint256 b;
        uint256 c;
    }
    function main(
        MixedContacts21 memory oldContacts,
        MixedContacts21 memory newContacts
    )
    public view returns (MixedContacts21 memory){
        oldContacts = oldContacts;
        return MixedContacts21({a: oldContacts.a + oldContacts.b + newContacts.a, b: oldContacts.c, c: oldContacts.b});
    }
}
contract MixedContactsExample23 is MixedContactsExample20, MixedContactsExample21, MixedContactsExample22 {
    function main(
        MixedContacts21 memory oldContacts,
        MixedContacts21 memory newContacts
    )
    public view returns (MixedContacts21 memory){
        oldContacts = oldContacts;
        return MixedContacts22({y: oldContacts.y + oldContacts.z + newContacts.y});
    }
}
contract MixedContactsExample24 is MixedContactsExample23 {
    function main() public view returns (MixedContacts21 memory){
        address someFunction1 = address(0x7f28b191f8598d5c116
