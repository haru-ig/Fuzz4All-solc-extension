pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample75 {
    uint256 a__inline;
    uint256 b__inline;
    uint256 c__inline;
    uint256 d__inline;
    constructor() public {
        a__inline = 0;
        b__inline = ~a__inline;
        c__inline = c__inline + a__inline;
        d__inline = d__inline + b__inline;
    }
    function doSomething() public {
        b__inline = ~a__inline;
        a__inline = a__inline + 1;
    }
}
