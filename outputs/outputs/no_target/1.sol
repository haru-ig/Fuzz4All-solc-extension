pragma solidity ^0.8.0;


address foo;

interface IBar {
    function bar() external returns (address);
}

contract Foo is IBar {
    constructor() {
        foo = msg.sender;
    }

    function bar() public view returns (address) {
        return foo;
    }
}
