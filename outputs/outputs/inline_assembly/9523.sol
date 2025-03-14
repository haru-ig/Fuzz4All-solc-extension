pragma solidity ^0.8.0;
contract MyContract {
    function foo(address x) public{
        x;
    }
    function bar() public pure {
        foo();
    }
}
