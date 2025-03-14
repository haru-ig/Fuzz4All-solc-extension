pragma solidity ^0.8.0;
contract Unsafe3 {
    address a;
    bool b;
    uint192 c;
    constructor() public {
        a = 0xabcde123ABCDE123;
        b = 0x9876543298765432;
        c = 0x5432987654329875;
    }
    function f() public {
        unchecked {
            a = address(0);
        }
    }
    function g() public {
        unchecked {
            b = false;
        }
    }
    function h() public {
        unchecked {
            c++;
        }
    }
    function i() public {
        unchecked {
            c--;
        }
    }
}
