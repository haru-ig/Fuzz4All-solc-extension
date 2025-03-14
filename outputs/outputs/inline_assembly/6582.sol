pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample83 {
    uint256 a;
    uint256 b;
    uint256 c;
    uint256 d;
    uint256 e;
    constructor() public {
        a = 0;
        b = b + 7;
        b = b * 1 + 3;
        b = b * 1 * 1;
        c = c + a;
        d = d + b;
        e = e + c;
    }

    function doSomething() public view {
        a > e;
    }

    function doSomethingElse() public pure {
        c + 1;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample83 {
    uint256 a;
    uint256 b;
    uint256 c;
    uint256 d;
    uint256 e;
    constructor() public {
        a = 0;
        b = b + 7;
        b = b * 1 + 3;
        b = b * 1 * 1;
        c = c + a;
        d = d + b;
        e = e + c;
    }

    function doSomething() public view {
        a > e;
    }
}
