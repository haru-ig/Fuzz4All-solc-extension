pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample85_Old {
    uint256 s;
    constructor(uint256 _s) public {
        s /= s;
    }
    function doSomething() public {
        s /= s;
    }
}
