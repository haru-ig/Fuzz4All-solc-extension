pragma solidity ^0.8.0;
contract mutatingStorage {
    uint constant a = 3;
    uint constant b = 5;
    uint c;

    function m1() public {

        c = a + b;
        c = c + b;
        c = c + b;
        c = c + b;
        c = c + b;
        c = c + b;
        c = c + b;
        c = c + b;
        c = a + b;
    }
    function m2() public {

        c = a + b;
        c = c + b;
        c = c + b;
        c = c + b;
        c = c + b;
        c = c + b;
        c = c + b;
        c = a + b;
    }
}

pragma solidity ^0.8.0;
contract uncheckedArithmetic {
    uint constant a = 85;
    uint constant b = 12;

    function m() public {

        a -= 10^12;
        a -= 10^12;
        a -= 10^12;
        a -= 10^12;
        a -= 10^12;
        a -= 10^12;
        a -= 10^12;
        a -= 10^12;
        a -= 10^12;
        a -= 10^12;
    }
    function testOverflow() public pure {
        unchecked {
            a += 0;
        }
    }
}

pragma solidity ^0.8.0;
contract disallowOldFeatures {
    function f1() public pure {
        assembly {
            mstore(0x48, 0x00)
            mstore(a, 0x2000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)
            mstore(c, mload(a))
        }
    }

    function f2() public pure {
        assembly {
            mstore(0x48, 0x00)
            mstore(a, 0x20000000000000000000
