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
    function main() public returns (MixedContacts memory){
        a = 3;
        b = 4;
        c = 5;
        MixedContacts memory result;
        result = oldContacts;
        return MixedContacts({y: result.y - result.z, z: a + c + result.y});
    }
}
contract MixedContactsExample22 {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    uint256 y;
    uint256 x;
    uint256 a;
    uint256 aTob;
    uint256 aTobPlusX;
    uint256 aTobPlusXPlusY;
    uint256 aTobPlusXB;
    uint256 aTobPlusY;
    uint256 d;
    uint256 c;
    function main(
        MixedContacts memory oldContacts,
        MixedContacts memory newContacts
    ) public returns(MixedContacts memory){
        oldContacts = oldContacts;
        oldContacts.y += oldContacts.z;
        newContacts.y -= oldContacts.z;
        return MixedContacts({y: aTobPlusXb(), x: b, a: d, aTob: y + x, aTobPlusX: aTobPlusX(), aTobPlusXB: aTobPlusXPlusB(), aTobPlusY: aTobPlusY()});
    }
    function bTobPlusX() public view returns (uint256) {
        return (bTobPlusX());
    }
    function bTobPlusXPlusB() public view returns (uint256) {
