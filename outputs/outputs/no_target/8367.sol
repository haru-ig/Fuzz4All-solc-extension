pragma solidity ^0.8.0;
contract Unsafe2 {
    uint public x;
    bool a;
    address b;
    constructor() public {
        unchecked {
            x = 1;
            a = true;
        }
    }
    function f() public {
        unchecked {
            b = address(0);
        }
    }
}
