pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample18 {
    struct MixedContacts {
        uint256 n;
        uint256 m;
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
        return (mixedcontacts_mod(ss1), mixedcontactsmod(ss2), mixedcontacts_mod(ss3), ss4, ss6, ss7, mixedcontactsmod(ss8), mixedcontacts_mod(ss9));
    }

    function mixedcontactsmod(MixedContacts memory mcc) public pure returns(MixedContacts memory) {
        mcc.y = 4;
        mcc.m = 5;
        return (mcc);
    }

    function mixedcontacts_mod(MixedContacts memory mcc) public pure returns(MixedContacts memory) {
        mcc.z = 6;
        mcc.n = 7;
        return (mcc);
    }
}
