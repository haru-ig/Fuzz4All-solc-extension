pragma solidity ^0.8.0;
contract Unsafe2 {
    address a;
    bool b;
    constructor() public {
        a = address(4);
        b = true;
    }
    function f() public {
        unchecked {
        }
    }
    function g() public {
        unchecked {
            a = address(0);
        }
    }
}
