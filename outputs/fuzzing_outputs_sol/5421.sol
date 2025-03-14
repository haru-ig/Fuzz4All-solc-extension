pragma solidity ^0.8.0;
contract mutatedfallback
{
    function f() public payable {
        self.func();
    }
}
