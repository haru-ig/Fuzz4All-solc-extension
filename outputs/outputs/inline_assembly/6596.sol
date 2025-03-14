pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample84b_New2 {
    using InlineAssembly for uint256;
    uint256 public a;
    uint256 public b;
    uint256 public c;
    uint256 public d;

    function doSomething() public {
        uint256 x = a += a;
        uint256 y = b += b;
        uint256 z = a += b;
        uint256 w = 1 > 0;
    }
}
