pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample25 {
    struct MixedContacts24 {
        uint256 y;
        uint256 z;
    }
    uint256 a;
    uint256 b;
    uint256 c;
    function main() public view returns (MixedContacts24 memory) {
        MixedContacts24 memory mem = MixedContacts24({y: a * c, z: b * a});
        mem.y += c;
        return mem;
    }
    function setY(uint256 newContactsY) public {
        a = newContactsY;
    }
    function setZ(uint256 newContactsZ) public {
        b = newContactsZ;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample26 {
    struct MixedContacts24 {
        uint256 y;
        uint256 z;
    }
    uint256 a;
    uint256 b;
    uint256 c;
    function MixedContactsExample26(address anotherContractAddress, uint256 newContactsY, uint256 newContactsZ) public {
        MixedContacts24 memory mem = MixedContacts24({y: anotherContractAddress.call.value(newContactsY)(abi.encodeWithSignature("main", newContactsY)), z: anotherContractAddress.call.value(newContactsZ)(abi.encodeWithSignature("main", newContactsZ))});
        c = newContactsC;
        a = newContactsY;
        b = newContactsZ;
    }
    function main() public view returns (MixedContacts24 memory) {
        return MixedContacts24({y: c, z: a});
    }
}
contract MixedContactsExample27 {
    uint256 a;
    uint256 b;
    uint256 c;
    function main() public view returns (uint256) {
        return (c * a + a * b);
    }
    function setC(uint256 newValue) public {
        c = newValue;
