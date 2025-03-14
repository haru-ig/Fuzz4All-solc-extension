pragma solidity ^0.8.0;
contract MixedContactsExample505 {






    struct MixedContactsExample507 {
        uint8 a;
        uint8 b;
    }
    struct MixedContactsExample506 {
        MixedContactsExample507 a;
        uint8 b;
    }
    function someOperation1() external returns(uint64) {
        MixedContactsExample507 memory s;
        MixedContactsExample506 memory s2;
    }
    function getAddressFromStruct() public pure returns(address) {
        return (address(s2));
    }
}
