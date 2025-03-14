pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample24A {
    struct MixedContacts24 {
        uint256 y;
        uint256 z;
    }
    uint256 a;
    uint256 b;
    uint256 c;
    function main() public view returns (MixedContacts24 memory) {
        uint256 newY = mul(c, 100);
        return MixedContacts24({y: newY, z: b});
    }
    function setY(uint256 newContactsY) public {
        a = newContactsY;
    }
    function setZ(uint256 newContactsZ) public {
        b = newContactsZ;
    }
    function mul(uint x1, uint x2) internal pure returns (uint x3) {
        x3 = x1 * x2; return;
    }
}
