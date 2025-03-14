pragma solidity ^0.8.0;
contract Unsafe {
    bool a;
    address b;
    constructor() public {
       unchecked {
          b = address(0);

        }
    }
    function f() public {
        a = true;
       unchecked {
           b = address(0);
        }
    }
}
