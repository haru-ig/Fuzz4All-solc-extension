pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample82 {
    uint256 a;
    uint256 b;
    uint256 c;
    uint256 d;
    uint256 e;
    constructor() {
        a = 0;
        b = ~a;
        c = c + a;
        d = d + b;
        e = e + c;
    }
    function doSomething() public {
        a = a + 1;
        a = a - 1;
        b = ~a;
        c = c + a;
        d = d + b;
        e = e + c;
    }
}

pragma solidity ^0.5.19;
pragma experimental ABIEncoderV2;
contract MixedContactsExample83a {
    uint256 a;
    uint256 b;
    uint256 c;
    uint256 d;
    uint256 e;
    constructor() {
        a = 0;
        b = ~a;
        c = c + a;
        d = d + b;
        e = e + c;
    }
    function doSomething() public {

    }
}

pragma solidity ^0.5.19;
pragma experimental ABIEncoderV2;
contract MixedContactsExample83b {
    uint256 a;
    uint256 b;
    uint256 c;
    uint256 d;
    uint256 e;
    constructor() {
        a = 0;
        b = ~a;
        c = c + a;
        d = d + b;
        e = e + c;
    }
    function doSomething() public {
        for (uint256 i = 0; i < 30; ++i) {

            if (b == 1 && c == 2) {
