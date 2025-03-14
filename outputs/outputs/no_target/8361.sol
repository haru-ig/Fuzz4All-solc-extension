pragma solidity ^0.8.0;
contract Unsafe {
    bool a;
    address b;
    constructor() public {
        unchecked {
        }
    }
    function f() public {
        a = true;
        unchecked {
            b = address(0);
        }
    }
}
