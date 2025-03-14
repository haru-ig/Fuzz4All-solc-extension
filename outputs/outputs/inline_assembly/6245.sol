pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample11 {
    struct MixedContacts {
        uint256 _x;
        uint256 _y;
    }
    constructor(MixedContacts memory param) public {
    }
    function main(MixedContacts memory s)
    public
    returns(MixedContacts memory)
    pure
    {
        s.y;
    }
}
