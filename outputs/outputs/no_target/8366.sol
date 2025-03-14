pragma solidity ^0.8.0;
contract Unsafe {
    bool a;
    address b;
    constructor() public {
        unchecked {
            a = true;
        }
    }
    function f() public {
        b = address(0);
        unchecked {
        }
    }
}
