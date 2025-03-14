pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample22 {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    uint256 a;
    function main() public view returns(MixedContacts memory) {
        return MixedContacts({y: a});
    }
    function setY(uint256 newContactsY) public {
        a = newContactsY;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample23 {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    uint256 a;
    function main() public view returns(MixedContacts memory){
        return MixedContacts({y: a, z: b});
    }
    function setY(uint256 newContactsY) public view {
        a = newContactsY;
    }
}



/** When interacting with contracts which inherit from a parent contract, a parent constructor automatically calls contract's inherited constructor before doing anything else. By doing this we ensure that contract's inherited constructor is called before any operations.
In the inherited contract method implementations, the contract's inherited constructor is not called on the child contract. Instead we will perform our own code before actually accessing functions of the child contract. This way we will ensure that
