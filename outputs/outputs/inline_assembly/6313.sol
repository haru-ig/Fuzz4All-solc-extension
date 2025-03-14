pragma solidity ^0.8.0;

pragma experimental ABIEncoderV2;
contract MixedContactsExample21 {
    struct MixedContacts {
        uint256 pooled;
        uint256 y;
        uint256 z;
    }
    uint256 a;
    uint256 b;
    uint256 c;

    uint256 seed = 0xb3d24580008500b3757b9d32508d2a583f416ed7;
    function main() public returns (MixedContacts memory){
        a = 3;
        b = 4;
        c = 5;
        seed = 0x00000000000000000000000000000086B3d24580008500b3757b9d32508d2a583f416ed7;
        return MixedContacts({pooled: a, y: b, z: c});
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
library MathLib {
    function max(uint256 a, uint256 b)internal pure returns (uint256) {
        return a > b? a : b;
    }
}
contract MixedContactsExample22 {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    uint256 a;
    uint256 b;
    uint256 c;
    function
