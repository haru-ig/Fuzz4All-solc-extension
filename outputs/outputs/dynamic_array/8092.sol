pragma solidity ^0.8.0;

contract D {
    function f(address toAdd) public virtual {}
    receive() external payable{
        f(toAdd);
    }
}
contract C is D {
    function f() public override virtual {}
}
