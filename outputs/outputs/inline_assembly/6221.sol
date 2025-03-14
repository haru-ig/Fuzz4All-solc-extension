pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample7 {
    uint public x;
    function main(uint witness)
    public view returns (MixedContacts memory) {
        MixedContacts memory x;
        return x;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample8 {
    uint public y =123;
    function main(uint witness)
    public view returns (MixedContacts memory) {
        MixedContacts memory x;
        x._x = 0;
        return x;
    }
}
