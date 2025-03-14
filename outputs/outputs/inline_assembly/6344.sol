pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MovedMixedContacts {
    uint256 initialY = 0x123456;
    uint256 initialZ = 0xABCD;
    uint256 constant yAddition = 0xAC12;
    uint256 constant zAddition = 0x123456;
    uint256 constant contactsYAddition = 0xAC123456789;
    function main() public view returns (MixedContacts24 memory) {
        MixedContacts24 memory newContacts;
        newContacts.y = initialY;
        newContacts.z = initialZ;
        a = initialY + initialZ ^ initialY ^ initialZ;
        b = initialY + initialZ;
        c = initialY + initialZ + contactsYAddition;
        newContacts.y += yAddition;
        newContacts.z += initialY + zAddition;
        return newContacts;
    }
}



pragma solidity ^0.8.0;

contract Mutator {
    uint256 yStore;
    mapping(uint256 => uint256) xStoreToY;
    function getStoreOfY() public view returns (uint256) {
        return xStoreToY[yStore];
    }
    function main() public view returns (uint256) {
        return yStore - 0;
    }
    function setXToY(uint256 x, uint256 y) public {
        xStoreToY[x] = y;
    }
    function setY(uint256 y)
