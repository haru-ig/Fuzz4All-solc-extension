pragma solidity ^0.8.0;
contract Foo {
    receive() public external payable {
    }
    fallback () external payable {
        return ;
    }
}
