pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample17 {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    function main(
        MixedContacts ss1,
        MixedContacts memory ss2,
        MixedContacts memory ss3,
        MixedContacts memory ss4,
        MixedContacts memory ss6,
        MixedContacts memory ss7,
        MixedContacts memory ss8,
        MixedContacts memory ss9,
        MixedContacts memory ss10
    )
    public {

        uint tempX = ss1.x;

        ss1.y = ss2.z;
    }
}
contract MixedContactsExample17 {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    function main() public {
        uint tempX;
        MixedContacts memory ss2 = MixedContacts(0, 1);
        MixedContacts memory ss3 = MixedContacts(2, 1);
        MixedContacts memory ss4 = MixedContacts(2, 0);
        MixedContacts memory ss6 = MixedContacts(2, 1);
        MixedContacts memory ss7 = MixedContacts(2, 0);
        MixedContacts memory ss8 = MixedContacts(2, 0);
        MixedContacts memory ss9 = MixedContacts(2, 0);
        MixedContacts memory ss10 = MixedContacts(2, 0);
        uint256 res;
        tempX = 1;
        MixedContacts memory ss1 = MixedContacts(2, 0x40b000001);
        ss1.y = 0x7FFFF;
        MixedContacts memory tmp;
    }
}
