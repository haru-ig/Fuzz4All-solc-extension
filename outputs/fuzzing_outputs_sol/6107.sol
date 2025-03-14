pragma solidity ^0.8.0;
contract Caller {
    B public foo;
    uint public x;
    constructor() {
        foo=new B();
        x=foo.setAdmin.value(1 ether)(bar);
    }
    function bar() public {

    }
}
