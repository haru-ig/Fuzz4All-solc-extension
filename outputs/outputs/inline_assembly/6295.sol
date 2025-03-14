pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample18 {
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
        MixedContacts memory result;
        if(ss1.z < ss3.y) { result.y = ss2.y; result.z = ss2.z; }
        else if(ss1.y < ss2.y) { result.y = ss3.y; result.z = ss3.z; }
        else if(ss1.z < ss2.z) { result.y = ss4.y; result.z = ss4.z; }
        else if(ss1.y < ss3.z) { result.y = ss6.y; result.z = ss6.z; }
        else if(ss1.z < ss4.z) { result.y = ss7.y; result.z = ss7.z; }
        else if(ss1.y < ss5.z) { result.y = ss8.y; result.z = ss8.z; }
        else if(ss1.z < ss6.z) { result.y = ss9.y; result.z = ss9.z; }
        else if(ss1.z < ss7.z) { result.y = ss10.y; result.z = ss10.z; }
        return result;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample19 {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    function main(
        MixedContacts memory ss1,
        MixedContacts memory ss2,
        MixedContacts memory
