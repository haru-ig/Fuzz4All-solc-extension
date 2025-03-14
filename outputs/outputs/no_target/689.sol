pragma solidity ^0.8.0;
library Compares {
    function eq(uint a, uint b, uint c) private pure returns (bool) {
        return a == b || a == c || b == c;
    }
}

 pragma solidity ^0.8.0;
library Compares {
    function eq(uint a, uint b, uint c) private pure returns (bool) {
        return a == b || a == c || b == c;
    }
    struct Result {
        address address1;
        address address2;
    }
    function compare(address a1, address a2) private view returns (uint8) {
        uint8 equal = 0;
        (, ) = mappingExtCodeHash(a1);
        (, ) = mappingExtCodeHash(a2);
        if (a1 == a2) equal |= 1;
        return equal;
    }
}
pragma solidity ^0.8.0;
library StorageTypes {
    struct Bool { uint8 value; }
    struct Int { uint value; }
    struct Uint { uint value; }
    struct Address { bytes addr; }
    struct Bytes { bytes value; }
    struct String { bytes value; }
    struct Bytes4 { bytes4 value; }
    struct Bytes32 { bytes32 value; }
    struct String42 { bytes42 value; }
    struct String32 { bytes32 value; }
    struct Bytes16 { bytes16 value; }
    struct String16 { bytes16 value; }
    struct Bytes2 { bytes2 value; }
    struct UFix64 { uint64 value; }
    struct SFix64 { sint64 value; }
    struct UFix128 { uint128 value; }
    struct SFix128 { sint1
