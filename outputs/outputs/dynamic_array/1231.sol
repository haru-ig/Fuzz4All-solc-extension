pragma solidity ^0.8.0;
contract Mutation {
    uint16 public num;
    address[] public foo;
    function foo() public { foo.length = 5; foo[5] = 0x10000000000000000000000000000000000; }
    function bar() public { num = num + 1; }
}
