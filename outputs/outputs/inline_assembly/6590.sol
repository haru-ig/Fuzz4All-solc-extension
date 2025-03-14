pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample84 {
    uint256 public a;
    uint256 public b;
    uint256 public c;
    uint256 public d;
    uint256 public e;
    function doSomething() public {
        require(a + 1 == d, "Incorrect assert: Should be 19.");
        require(a + 1 == e);
        require(a + b + 1 == 23, "Incorrect assert: Should be 23.");
        require(b == a + 1, "Incorrect assert: Should be 1.");
        require(b == (a + 1) + ~a, "Incorrect assert: Should be b.");
        require(b + 1 == a + b + 1, "Incorrect assert: Should be 23.");
    }
}
