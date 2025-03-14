pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample21 {
    struct MixedContacts21 {
        uint256 a;
        uint256 b;
    }
    uint256 a;
    uint256 b;
    uint256 c;
    function main() public view returns(MixedContacts21 memory){
        return MixedContacts21({a: a, b: b});
    }
    function setA(uint256 newContactsA) public {
        a = newContactsA;
    }
    function setB(uint256 newContactsB) public {
        b = newContactsB;
    }
}
