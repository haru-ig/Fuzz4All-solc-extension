pragma solidity ^0.8.0;
contract MixedContactsExample506 {
    MixedContactsExample506Interface1 public immutable contact;

    assembly {
        contact.someOperation1()
    }
}
