pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample97 {
    uint8 a;
    function callMe() public payable {
        (a, ) = address.call(abi.encodeWithSignature("someMethod(uint8)", msg.value));
    }
}
