pragma solidity ^0.8.0;
contract D {

    constructor() public {

        address payable a = payable(address(this));
    }
    function foo() public pure {
        address a = address(address(0x0));
    }
    function bar() public {
        address a;
        a.transfer(0);
    }
}
