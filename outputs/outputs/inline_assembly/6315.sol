pragma solidity ^0.8.0;
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
        return MixedContacts({y: a, z: b});
    }
}
contract MixedContactsExample23 {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    uint256 old = 0;
    uint256 next;
    uint256 a;
    uint256 b;
    uint256 c;
    function main() public returns (MixedContacts memory){
        old = old;
        return MixedContacts({y: next + 2*old, z: next - (3*next + old) });
    }
}


struct MixedContacts {
    uint256 y;
    uint256 z;
}
contract MixedContactsExample24 {
    function main() public view returns (MixedContacts memory){
        MixedContacts memory x = MixedContactsExample24.recursive(2);
        bytes memory bytestring1 = abi.encode(MixedContactsExample25.recursive(x.y) & 3);
        bytes memory bytestring2 ;
        bytestring2 = abi.encode(0x00);
        bytes memory bytestring3 ;
        bytestring3 = abi.encode(0x00);
        return MixedContacts({y: 42, z: x.y});
    }
    function recursive(
        uint256 a
    )
    public
    view
    returns (MixedContacts memory){
        /* bytes memory bytestring =
