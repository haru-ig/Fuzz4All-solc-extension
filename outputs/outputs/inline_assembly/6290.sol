pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample17 {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    function main(
        MixedContacts memory ss1,
        MixedContacts memory ss2,
        MixedContacts memory ss3,
        MixedContacts memory ss4,
        MixedContacts memory ss6,
        MixedContacts memory ss7,
        MixedContacts memory ss8,
        MixedContacts memory ss9,
        MixedContacts memory ss10
    )
    public view returns (MixedContacts memory){
        return ss1;
    }
}
