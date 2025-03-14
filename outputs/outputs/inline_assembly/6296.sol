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
        MixedContacts memory ss5,
        MixedContacts memory ss6,
        MixedContacts memory ss7,
        MixedContacts memory ss8,
        MixedContacts memory ss9,
        MixedContacts memory ss10
    )
    public view returns (MixedContacts memory){
        return memop(ss1, 10);
    }
    function memop(var memory n) private pure returns (MixedContacts memory) {
        if (n.y == 9) n.y = 10; else n.y++;
        return n;
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
        MixedContacts memory ss3,
        MixedContacts memory ss5,
        MixedContacts memory ss6,
        MixedContacts memory ss7,
        MixedContacts memory ss8,
        MixedContacts memory ss9,
        MixedContacts memory ss10
    )
    public view returns (MixedContacts memory){
        return (

            { z: ss1.y, y: ss3.y },
            {  v: 10 }
        );
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample20 {
    struct MixedContacts {
        uint256 y;
        uint256 z;
    }
    function main(
        MixedContacts memory ss1,
        MixedContacts memory ss2,
        MixedContacts memory ss3,
        MixedContacts memory ss5,
        MixedContacts memory ss6,
