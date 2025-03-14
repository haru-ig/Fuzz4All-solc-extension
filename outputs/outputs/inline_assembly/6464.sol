pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample52 {
    uint256 a;
    function set() public {
        a = 22;
        a = 23;
    }
    event get() public {
        uint256 x = a;
    }
}
