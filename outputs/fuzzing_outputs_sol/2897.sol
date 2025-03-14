pragma solidity ^0.8.0;
contract Foo {
    receive() external payable {
    }
    fallback () external payable {
        (bool b,) = (false, );
        return ;
    }
}
contract Caller {
