pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutatedContactsExample24 {
    struct MixedContacts24 {}
    uint256 a;
    uint256 b;
    uint256 c;
    address payable owner;
    constructor(uint256 a_, uint256 b_, uint256 c_) {
        owner = payable(msg.sender);
        a = a_;
        b = b_;
        c = c_;
    }
    function main() public payable view returns (MixedContacts24 memory) {
        c = a + b;
        return (MixedContacts24(a, b));
    }
    function setY(uint256 newContactsY) public {
        a = newContactsY;
    }
    function setZ(uint256 newContactsZ) public {
        b = newContactsZ;
    }
}
