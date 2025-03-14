pragma solidity ^0.8.0;
contract SimpleExample {
    uint256 public value;
    function read() public {
        value = 42;
        value = 43;

        value = 42;
    }
}

contract Examplex {
    function f() public payable {
        SimpleExample simpleExample = new SimpleExamplex_new_constructor();
        simpleExample.foo();
    }
}
