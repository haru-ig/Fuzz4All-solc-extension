pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample77 {
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


    }
}
contract MixedContactsExample79 {
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
        c__inline = a__inline - 1;
        b__inline = c__inline + a__inline;
        a__inline = b__inline + b__inline;
    }
}
contract MixedContactsExample80 {
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


    }
}
