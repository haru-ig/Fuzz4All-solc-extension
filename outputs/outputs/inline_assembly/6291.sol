pragma solidity ^0.8.0;

library MixedContactsExample16_Interface {
    function main(MixedContacts memory ss) public view returns (MixedContacts memory);
}

pragma solidity >=0.8.0;
contract MixedContactsExample16 {
    function main(MixedContactsExample16_Interface.MixedContacts memory ss) public view returns (MixedContactsExample16_Interface.MixedContacts memory){
        MixedContactsExample16_Interface.MixedContacts memory ss;
        ss.y=2;
        ss.z=5;
        return ss;
    }
}
